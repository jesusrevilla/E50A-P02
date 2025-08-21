-- DB: universidad
-- Esquema que coincide con el orden de columnas que valida el test

CREATE TABLE IF NOT EXISTS ESTUDIANTE (
  id_estudiante INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  fecha_nacimiento DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS CURSO (
  id_curso INT PRIMARY KEY,
  nombre_curso VARCHAR(100) NOT NULL,
  creditos INT NOT NULL CHECK (creditos > 0)
);

CREATE TABLE IF NOT EXISTS PROFESOR (
  id_profesor INT PRIMARY KEY,
  nombre_profesor VARCHAR(100) NOT NULL,
  departamento VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS INSCRIPCION (
  id_estudiante INT NOT NULL,
  id_curso INT NOT NULL,
  fecha_inscripcion DATE NOT NULL,
  PRIMARY KEY (id_estudiante, id_curso),
  FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANTE(id_estudiante),
  FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);

-- Nota: usamos ENSEÑA (con ñ) porque el test consulta exactamente ENSEÑA
CREATE TABLE IF NOT EXISTS ENSEÑA (
  id_profesor INT NOT NULL,
  id_curso INT NOT NULL,
  PRIMARY KEY (id_profesor, id_curso),
  FOREIGN KEY (id_profesor) REFERENCES PROFESOR(id_profesor),
  FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);
-- Template


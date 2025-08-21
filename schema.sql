CREATE TABLE ESTUDIANTE(
	id_estudiante SERIAL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);

CREATE TABLE CURSO(
	id_curso SERIAL PRIMARY KEY,
    nombre_curso VARCHAR(30) NOT NULL,
    creditos INTEGER NOT NULL
);

CREATE TABLE PROFESOR(
    id_profesor SERIAL PRIMARY KEY,
    nombre_profesor VARCHAR(30) NOT NULL,
    departamento VARCHAR(30) NOT NULL
);

CREATE TABLE INSCRIPCION(
	id_estudiante INTEGER,
    id_curso INTEGER,
    fecha_inscripcion DATE NOT NULL,
    FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANTE(id_estudiante),
    FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);

CREATE TABLE ENSEÑA(
	id_profesor INTEGER,
    id_curso INTEGER,
    FOREIGN KEY (id_profesor) REFERENCES PROFESOR(id_profesor),
    FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);

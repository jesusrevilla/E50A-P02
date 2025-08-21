CREATE TABLE ESTUDIANTE (
    id_estudiante SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    fecha_nacimiento DATE
);

CREATE TABLE CURSO (
    id_curso SERIAL PRIMARY KEY,
    nombre_curso VARCHAR(255) NOT NULL,
    creditos INT
);

CREATE TABLE PROFESOR (
    id_profesor SERIAL PRIMARY KEY,
    nombre_profesor VARCHAR(255) NOT NULL,
    departamento VARCHAR(255)
);

CREATE TABLE INSCRIPCION (
    id_inscripcion SERIAL PRIMARY KEY,
    id_estudiante INT REFERENCES ESTUDIANTE(id_estudiante),
    id_curso INT REFERENCES CURSO(id_curso),
    fecha_inscripcion DATE,
    UNIQUE (id_estudiante, id_curso)
);

CREATE TABLE ENSEÑA (
    id_enseña SERIAL PRIMARY KEY,
    id_profesor INT REFERENCES PROFESOR(id_profesor),
    id_curso INT REFERENCES CURSO(id_curso),
    UNIQUE (id_profesor, id_curso)
);

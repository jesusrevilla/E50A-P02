CREATE TABLE ESTUDIANTE (
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);

CREATE TABLE CURSO (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nombre_curso VARCHAR(100) NOT NULL,
    creditos INT NOT NULL CHECK (creditos > 0)
);

CREATE TABLE PROFESOR (
    id_profesor INT PRIMARY KEY AUTO_INCREMENT,
    nombre_profesor VARCHAR(100) NOT NULL,
    departamento VARCHAR(100) NOT NULL
);

CREATE TABLE INSCRIPCION (
    id_inscripcion INT PRIMARY KEY AUTO_INCREMENT,
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,
    fecha_inscripcion DATE NOT NULL,
    FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANTE(id_estudiante) ON DELETE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso) ON DELETE CASCADE
);

CREATE TABLE ENSEÑA (
    id_enseña INT PRIMARY KEY AUTO_INCREMENT,
    id_profesor INT NOT NULL,
    id_curso INT NOT NULL,
    FOREIGN KEY (id_profesor) REFERENCES PROFESOR(id_profesor) ON DELETE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso) ON DELETE CASCADE
);

INSERT INTO ESTUDIANTE (nombre, apellido, fecha_nacimiento) VALUES
('Juan', 'Pérez', '2000-05-10'),
('María', 'González', '2001-02-20'),
('Carlos', 'López', '1999-11-15');

INSERT INTO CURSO (nombre_curso, creditos) VALUES
('Introducción a la programación', 4),
('Cálculo I', 5),
('Física General', 4);

INSERT INTO PROFESOR (nombre_profesor, departamento) VALUES
('Ana Rodríguez', 'Ciencias de la Computación'),
('Luis Sánchez', 'Matemáticas'),
('Sofía Martínez', 'Física');

INSERT INTO INSCRIPCION (id_estudiante, id_curso, fecha_inscripcion) VALUES
(1, 1, '2023-08-20'),
(2, 2, '2023-08-20'),
(3, 3, '2023-08-20');

INSERT INTO ENSEÑA (id_profesor, id_curso) VALUES
(1, 1),
(2, 2),
(3, 3);

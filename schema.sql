-- teacher entity
CREATE TABLE profesor (
  Id_prof INT PRIMARY KEY,
  N_prof VARCHAR(50) NOT NULL,
  departamento VARCHAR(50) NOT NULL
  
);

-- student entity
CREATE TABLE estudiante (
  Id_estudiante INT PRIMARY KEY,
  P_nombre VARCHAR(50) NOT NULL,
  apellidos VARCHAR(50) NOT NULL,
  fecha_N VARCHAR(30) NOT NULL
);

-- course entity
CREATE TABLE cursos (
  Id_curso INT PRIMARY KEY,
  N_curso VARCHAR(50) NOT NULL,
  creditos INT NOT NULL
  
);

-- attendance entity
CREATE TABLE inscripcion (
  
  Id_estudiante INT REFERENCES estudiante(Id_estudiante) NOT NULL,
  Id_curso INT,
  f_incrip VARCHAR(20),
  PRIMARY KEY (Id_estudiante, Id_curso),
  FOREIGN KEY (Id_estudiante) REFERENCES estudiante(Id_estudiante),
  FOREIGN KEY (Id_curso) REFERENCES cursos(Id_curso)
  
);

-- attendance entity
CREATE TABLE enseña (
  
  Id_prof INT REFERENCES profesor(Id_prof) NOT NULL,
  Id_curso INT,
  PRIMARY KEY (Id_prof, Id_curso),
  FOREIGN KEY (Id_prof) REFERENCES profesor(Id_prof),
  FOREIGN KEY (Id_curso) REFERENCES cursos(Id_curso)
  
);


-- insert, into student table, 3 students
INSERT INTO estudiante
  (Id_estudiante, P_nombre, apellidos, fecha_N)
VALUES
  (1, 'Juan', 'Perez', '2000-05-10'),
  (2, 'Maria', 'Gonzales', '2001-02-20'),
  (3, 'Maria', 'López', '1999-11-15');
 
 
INSERT INTO cursos
  (Id_curso, N_curso, creditos)
VALUES
  (1,'introduccion a la computacion', 4),
  (2,'Calculo 1', 5),
  (3,'Fisica General', 4);
  
  
-- insert teacher
INSERT INTO profesor
  (Id_prof, N_prof, departamento)
VALUES
  (1, 'Ana Rodríguez', 'Ciencias de la computación'),
  (2, 'Luis Sánchez', 'Matematicas'),
  (3, 'Sofia Martínez', 'Fisca');


-- insert teacher
INSERT INTO inscripcion
  (Id_estudiante, Id_curso, f_incrip)
VALUES
  (1, 1,'2023-08-20'),
  (2, 2,'2023-08-20'),
  (3, 3,'2023-08-20');
  

-- insert teacher
INSERT INTO enseña
  (Id_prof, Id_curso)
VALUES
  (1, 1),
  (2, 2),
  (3, 3);




-- query teacher
SELECT * 
FROM  profesor;


-- query students
SELECT *
FROM estudiante;


-- query courses
SELECT *
FROM cursos;

-- query courses
SELECT *
FROM inscripcion;

-- query courses
SELECT *
FROM enseña;
-- Template


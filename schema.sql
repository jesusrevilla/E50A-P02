CREATE TABLE estudiante (
id_estudiante serial primary key,
nombre varchar(50),
apellido varchar(50),
fecha_nacimiento date
);
CREATE TABLE curso (
id_curso serial primary key,
nombre_curso varchar(70),
creditos int
);
CREATE TABLE profesor (
id_profesor serial primary key,
nombre_profesor varchar(50),
departamento varchar(70)
);
CREATE TABLE inscripcion (
id_estudiante int,
id_curso int,
fecha_inscripcion date,
primary key (id_estudiante, id_curso),
foreign key (id_estudiante) references estudiante(id_estudiante),
foreign key (id_curso) references curso(id_curso)
);
CREATE TABLE ensena (
id_profesor int,
id_curso int,
primary key (id_profesor, id_curso),
foreign key (id_profesor) references profesor(id_profesor),
foreign key (id_curso) references curso(id_curso)
);

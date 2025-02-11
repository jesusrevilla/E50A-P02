
-- student entity
CREATE TABLE student (
 student_id SERIAL PRIMARY KEY,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 birth_date DATE NOT NULL
);
-- course entity
CREATE TABLE course (
 course_id SERIAL PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 credits INT NOT NULL
);
-- teacher entity
CREATE TABLE teacher (
 teacher_id SERIAL PRIMARY KEY,
 full_name VARCHAR(100) NOT NULL,
 department VARCHAR(100) NOT NULL
);
-- inscription entity
CREATE TABLE inscription (
 student_id INT NOT NULL,
 course_id INT NOT NULL,
 inscription_date DATE NOT NULL,
 PRIMARY KEY (student_id, course_id),
 FOREIGN KEY (student_id) REFERENCES student(student_id),
 FOREIGN KEY (course_id) REFERENCES course(course_id)
);
-- teaching entity
CREATE TABLE teaching (
 teacher_id INT NOT NULL,
 course_id INT NOT NULL,
 PRIMARY KEY (teacher_id, course_id),
 FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id),
 FOREIGN KEY (course_id) REFERENCES course(course_id)
);
-- Insert students
INSERT INTO student (first_name, last_name, birth_date) VALUES
('Juan', 'Pérez', '2000-05-10'),
('María', 'González', '2001-02-20'),
('Carlos', 'López', '1999-11-15');
-- Insert courses
INSERT INTO course (name, credits) VALUES
('Introducción a la programación', 4),
('Cálculo I', 5),
('Física General', 4);
-- Insert teachers
INSERT INTO teacher (full_name, department) VALUES
('Ana Rodríguez', 'Ciencias de la Computación'),
('Luis Sánchez', 'Matemáticas'),
('Sofía Martínez', 'Física');
-- Insert inscriptions
INSERT INTO inscription (student_id, course_id, inscription_date) VALUES
(1, 1, '2023-08-20'),
(2, 2, '2023-08-20'),
(3, 3, '2023-08-20');
-- Insert teaching
INSERT INTO teaching (teacher_id, course_id) VALUES
(1, 1),
(2, 2),
(3, 3);
SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM teacher;
SELECT * FROM inscription;
SELECT * FROM teaching;

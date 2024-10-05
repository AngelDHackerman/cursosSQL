-- Insertar 20 estudiantes
INSERT INTO STUDENTS (FIRSTNAME, LASTNAME, AGE, EMAIL) VALUES
('Alice', 'Smith', 22, 'alice.smith@example.com'),
('Bob', 'Johnson', 24, 'bob.johnson@example.com'),
('Charlie', 'Brown', 26, 'charlie.brown@example.com'),
('David', 'Wilson', 28, 'david.wilson@example.com'),
('Eva', 'Davis', 23, 'eva.davis@example.com'),
('Frank', 'Garcia', 21, 'frank.garcia@example.com'),
('Grace', 'Martinez', 25, 'grace.martinez@example.com'),
('Henry', 'Rodriguez', 30, 'henry.rodriguez@example.com'),
('Ivy', 'Lewis', 27, 'ivy.lewis@example.com'),
('Jack', 'Lee', 22, 'jack.lee@example.com'),
('Karen', 'Walker', 29, 'karen.walker@example.com'),
('Liam', 'Hall', 24, 'liam.hall@example.com'),
('Mia', 'Allen', 31, 'mia.allen@example.com'),
('Noah', 'Young', 26, 'noah.young@example.com'),
('Olivia', 'King', 25, 'olivia.king@example.com'),
('Paul', 'Wright', 22, 'paul.wright@example.com'),
('Quinn', 'Lopez', 30, 'quinn.lopez@example.com'),
('Ruby', 'Hill', 28, 'ruby.hill@example.com'),
('Sam', 'Scott', 24, 'sam.scott@example.com'),
('Tina', 'Green', 23, 'tina.green@example.com');

-- Insertar instructores de idiomas
INSERT INTO INSTRUCTORS (INSTRUCTORID, FIRSTNAME, LASTNAME, EMAIL, SPECIALITY, HIREDATE, UPDATEDATE) VALUES
(1, 'Angel', 'Hackerman', 'angel.hackerman@test.com', 'Frances', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, 'Carlos', 'Perez', 'carlos.perez@test.com', 'Español', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(3, 'Maria', 'Lopez', 'maria.lopez@test.com', 'Español', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(4, 'Hans', 'Muller', 'hans.muller@test.com', 'Aleman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(5, 'Greta', 'Schmidt', 'greta.schmidt@test.com', 'Aleman', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(6, 'John', 'Doe', 'john.doe@test.com', 'Ingles', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(7, 'Emma', 'Taylor', 'emma.taylor@test.com', 'Ingles', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(8, 'Pedro', 'Silva', 'pedro.silva@test.com', 'Portugues', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(9, 'Ana', 'Costa', 'ana.costa@test.com', 'Portugues', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(10, 'Stephan', 'Bordeaux', 'Stephan.Bordeaux@test.com', 'Frances', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insertar cursos de diferentes idiomas
INSERT INTO courses (COURSENAME, DESCRIPTION, INSTRUCTORID, DURATIONHOURS, LOAD_DATE) VALUES
('Espanol', 'Curso de espanol intermedio', 2, 15, CURRENT_TIMESTAMP),
('Espanol Avanzado', 'Curso de espanol avanzado', 3, 20, CURRENT_TIMESTAMP),
('Aleman', 'Curso de aleman basico', 4, 10, CURRENT_TIMESTAMP),
('Ingles', 'Curso de ingles basico', 6, 12, CURRENT_TIMESTAMP),
('Portugues', 'Curso de portugues intermedio', 8, 18, CURRENT_TIMESTAMP);

-- Relacionar estudiantes con cursos (40 combinaciones)
INSERT INTO STUDENT_COURSES (STUDENTID, COURSEID) VALUES
(1, 1), (1, 2), (1, 3), -- Alice inscrita en Espanol, Espanol Avanzado y Aleman
(2, 4), (2, 5), -- Bob inscrito en Ingles y Portugues
(3, 1), (3, 3), (3, 4), -- Charlie inscrito en Espanol, Aleman, e Ingles
(4, 2), (4, 5), -- David inscrito en Espanol Avanzado y Portugues
(5, 1), (5, 4), -- Eva inscrita en Espanol e Ingles
(6, 2), (6, 3), -- Frank inscrito en Espanol Avanzado y Aleman
(7, 5), (7, 1), -- Grace inscrita en Portugues y Espanol
(8, 3), (8, 4), (8, 5), -- Henry inscrito en Aleman, Ingles y Portugues
(9, 1), (9, 2), -- Ivy inscrita en Espanol y Espanol Avanzado
(10, 3), (10, 5), -- Jack inscrito en Aleman y Portugues
(11, 4), (11, 2), -- Karen inscrita en Ingles y Espanol Avanzado
(12, 1), (12, 5), -- Liam inscrito en Espanol y Portugues
(13, 3), (13, 4), -- Mia inscrita en Aleman e Ingles
(14, 1), (14, 2), (14, 5), -- Noah inscrito en Espanol, Espanol Avanzado y Portugues
(15, 2), (15, 4), -- Olivia inscrita en Espanol Avanzado e Ingles
(16, 1), (16, 3), -- Paul inscrito en Espanol y Aleman
(17, 2), (17, 5), -- Quinn inscrito en Espanol Avanzado y Portugues
(18, 1), (18, 4), -- Ruby inscrita en Espanol e Ingles
(19, 3), (19, 5), -- Sam inscrito en Aleman y Portugues
(20, 2), (20, 4), (20, 5); -- Tina inscrita en Espanol Avanzado, Ingles y Portugues

-- Agregar salarios a cada instructor de forma aleatoria

UPDATE instructors 
SET salary = 5000 + FLOOR(RANDOM()* 2000)


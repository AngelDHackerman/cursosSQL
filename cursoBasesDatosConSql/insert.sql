-- Insert students

INSERT INTO STUDENTS (FIRSTNAME, LASTNAME, AGE, EMAIL)
VALUES ('John', 'Doe', 27, 'john.doe@example.com');

-- Insert Instructor

INSERT INTO INSTRUCTORS (INSTRUCTORID, FIRSTNAME, LASTNAME, EMAIL, SPECIALITY, HIREDATE, UPDATEDATE)
VALUES (1, 'Angel', 'Hackerman', 'angelhackerman@test.com', 'Frances', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert courses

INSERT INTO courses (COURSENAME, DESCRIPTION, INSTRUCTORID, DURATIONHOURS, LOAD_DATE)
VALUES ('Frances', 'Curso de frances basico', 1, 10, CURRENT_TIMESTAMP)

UPDATE courses
SET courseid = 1
WHERE courseid = 2;

-- Insert student and course

INSERT INTO STUDENT_COURSES (STUDENTID, COURSEID)
VALUES (1,1);

SELECT * FROM STUDENTS;
SELECT * FROM INSTRUCTORS;
SELECT * FROM COURSES;
SELECT * FROM STUDENT_COURSES;

-- DELETE FROM students WHERE studentid = 1;
-- DELETE FROM courses WHERE courseid = 1;
-- DELETE FROM instructors WHERE instructorid = 1;
-- DELETE FROM student_courses WHERE studentid = 1 AND courseid = 1;

DELETE FROM students;
DELETE FROM courses;
DELETE FROM instructors;

TRUNCATE TABLE students;
TRUNCATE TABLE instructors;
TRUNCATE TABLE courses;

ALTER SEQUENCE students_studentid_seq RESTART WITH 1;
ALTER SEQUENCE courses_courseid_seq RESTART WITH 1;
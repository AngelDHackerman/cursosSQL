-- Numero de alumnos por curso

SELECT COURSEID, COUNT(STUDENTID)
FROM STUDENT_COURSES
GROUP BY COURSEID;

-- Total de lo que se paga en salarios a los instructores

SELECT SUM(SALARY) AS "Salario"
FROM INSTRUCTORS;

-- Promedio de salarios de lo instructores

SELECT SUM(SALARY) AS "salario", AVG(SALARY) AS "salario promedio"
FROM INSTRUCTORS;
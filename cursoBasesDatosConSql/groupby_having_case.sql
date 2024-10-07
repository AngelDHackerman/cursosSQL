-- Contando cuantos cursos tiene asignado cada estudiante.

SELECT STUDENTID, COUNT(*) AS "conteo_cursos_estudiante"
FROM STUDENT_COURSES
GROUP BY STUDENTID
ORDER BY conteo_cursos_estudiante DESC;

-- Contando cuantos alumnos tiene cada curso

SELECT COURSEID, COUNT(*) AS "conteo_alumnos"
FROM STUDENT_COURSES
GROUP BY COURSEID
ORDER BY conteo_alumnos DESC;

-- Contando los cursos que tienen 9 o mas estudiantes.

SELECT COURSEID, COUNT(*)
FROM STUDENT_COURSES
GROUP BY COURSEID
HAVING COUNT(*) >= 9;

-- Usando el Case When si esta entre los 21 y los 25 pertenece al tema A, sino al team B

SELECT
  FIRSTNAME,
  LASTNAME,
  CASE 
    WHEN AGE BETWEEN 21 AND 25 THEN 'TEAM A' 
    ELSE 'TEAM B' 
    END AS TEAM
FROM STUDENTS
ORDER BY CASE
    WHEN AGE BETWEEN 21 AND 25 THEN 1
    ELSE 2
  END;

SELECT AGE,
  CASE WHEN AGE BETWEEN 21 AND 25 THEN 'TEAM A' 
    ELSE 'TEAM B'
  END
FROM STUDENTS
GROUP BY AGE;

-- mostrar solo las filas de los apedilldos que terminan en 'z'

SELECT * FROM STUDENTS
WHERE LASTNAME LIKE '%z';

-- mostrar solo las filas de los apedilldos que empiezan en 'D'

SELECT * FROM STUDENTS
WHERE FIRSTNAME LIKE 'D%';


-- mostrar solo las filas de los apedilldos que tienen la letra 'o' incluida

SELECT FIRSTNAME, LASTNAME FROM STUDENTS
WHERE LASTNAME ILIKE '%o%';

SELECT FIRSTNAME, LASTNAME FROM STUDENTS
WHERE AGE >= 20;
DROP VIEW VW_STUDENTS;

CREATE OR REPLACE VIEW VW_STUDENTS AS 
SELECT STUDENTID, FIRSTNAME, LASTNAME
FROM STUDENTS;
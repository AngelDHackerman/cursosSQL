-- DELETE FROM students WHERE studentid = 1;
-- DELETE FROM courses WHERE courseid = 1;
-- DELETE FROM instructors WHERE instructorid = 1;
-- DELETE FROM student_courses WHERE studentid = 1 AND courseid = 1;

-- DELETE FROM students;
-- DELETE FROM courses;
-- DELETE FROM instructors;

ALTER SEQUENCE students_studentid_seq RESTART WITH 1;
ALTER SEQUENCE courses_courseid_seq RESTART WITH 1;
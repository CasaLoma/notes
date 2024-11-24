-- Lines starting with double dash are ignored by the DB
SELECT * 
FROM courses

-- Add an assignment with NULL due_date
INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

SELECT * FROM assignments
LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

SELECT sqlite_version();

SELECT upper('ABCxyz');

SELECT length('abcde');

SELECT 7*5;

SELECT concat('ABC', '-', 'xyz');

SELECT date();

SELECT strftime('%Y', due_date) AS Year, * 
FROM assignments;

-- SUBSTRING(string, start, length)
SELECT DISTINCT SUBSTRING(course_id, 1, 4) 
FROM courses;

-- Count how many courses there are with each prefix like 'MATH' and 'COMP'
SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- Use this query as a reference for the next step
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

Exercise 1
-- Concatenate Course Name and Semester - Brandon Situ
SELECT CONCAT(course_name, ' - ', semester) 
AS "Course and Semester" 
FROM courses;

Exercise 2
-- Find Courses with Labs on Fridays
SELECT 
  course_id, 
  course_name, 
  lab_time 
FROM courses 
WHERE 
  lab_day = 'Friday';

Exercise 3
  -- Upcoming Assignments
Select *
from assignments
where due_date > '2024-11-23'

Exercise 4
-- Count Assignments by Status
SELECT 
  status, 
  COUNT(*) AS "Number of Assignments" 
FROM assignments 
GROUP BY 
  status;

Exercise 5
--Longest Course Name
SELECT 
  course_name 
FROM courses 
ORDER BY 
  LENGTH(course_name) DESC
LIMIT 1;

Exercise 6
-- Uppercase Course Names
SELECT 
  UPPER(course_name) AS "Uppercase Course Names" 
FROM courses;

Exercise 7 
-- Assignments Due in September
SELECT 
  title 
FROM assignments 
WHERE 
  due_date LIKE '%-09-%';

Exercise 8 
-- Assignments with Missing Due Dates
SELECT 
  * 
FROM assignments 
WHERE 
  due_date IS NULL;

SELECT * FROM assignments 
SELECT * FROM courses 
SELECT * FROM sqlite_sequence 


Exercise Questions

1.
Select title, due_date 
From assignments 
Where course_id = 'COMP1234'

2.
SELECT MIN(due_date)
FROM assignments;

3.

SELECT MAX(due_date)
FROM assignments;

4.

SELECT title, course_id
from assignments
where due_date = '2024-10-08'

5. 

SELECT title, course_id
from assignments
where due_date LIKE '2024-10%'

6.

SELECT MAX(due_date) 
from assignments
where status = 'Completed'

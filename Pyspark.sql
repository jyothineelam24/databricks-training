-- SELECT

-- 1. Select only emp_name and salary
SELECT emp_name, salary FROM employee;

-- 2. Select emp_id, emp_name, and department
SELECT emp_id, emp_name, department FROM employee;

-- 3. Select city, designation, and salary
SELECT city, designation, salary FROM employee;

-- 4. Select all employees from only IT department with selected columns
SELECT emp_id, emp_name, salary
FROM employee
WHERE department='IT';

-- 5. Select emp_name, joining_date, and salary
SELECT emp_name, joining_date, salary
FROM employee;

-- 6. Select first 5 columns from dataframe
SELECT emp_id, emp_name, age, city, designation
FROM employee;

-- 7. Select employees whose salary column only
SELECT salary FROM employee;

-- 8. Select emp_name and city for employees from Hyderabad
SELECT emp_name, city
FROM employee
WHERE city='Hyderabad';

-- 9. Select designation and department
SELECT designation, department
FROM employee;

-- 10. Select all columns except joining_date
SELECT emp_id, emp_name, age, city,
designation, salary, department
FROM employee;

-- ALIAS
-- 1. Display emp_name as employee_name
SELECT emp_name AS employee_name
FROM employee;

-- 2. Display salary as monthly_salary
SELECT salary AS monthly_salary
FROM employee;

-- 3. Display department as dept
SELECT department AS dept
FROM employee;

-- 4. Display joining_date as doj
SELECT joining_date AS doj
FROM employee;

-- 5. Select emp_name as name and city as location
SELECT emp_name AS name,
city AS location
FROM employee;

-- 6. Display designation as job_role
SELECT designation AS job_role
FROM employee;

-- 7. Display age as employee_age
SELECT age AS employee_age
FROM employee;

-- 8. Select multiple columns using aliases
SELECT emp_id AS id,
emp_name AS name,
salary AS income
FROM employee;

-- 9. Display salary as emp_salary and department as emp_dept
SELECT salary AS emp_salary,
department AS emp_dept
FROM employee;

-- 10. Display city as work_location
SELECT city AS work_location
FROM employee;

-- FILTER / WHERE

-- 1. Filter employees whose salary is greater than 70000
SELECT * FROM employee
WHERE salary > 70000;

-- 2. Filter employees from Hyderabad
SELECT * FROM employee
WHERE city='Hyderabad';

-- 3. Filter employees whose age is less than 25
SELECT * FROM employee
WHERE age < 25;

-- 4. Filter employees from IT department
SELECT * FROM employee
WHERE department='IT';

-- 5. Filter employees whose designation is Developer
SELECT * FROM employee
WHERE designation='Developer';

-- 6. Filter employees whose salary is between 50000 and 80000
SELECT * FROM employee
WHERE salary BETWEEN 50000 AND 80000;

-- 7. Filter employees whose city is Bangalore
SELECT * FROM employee
WHERE city='Bangalore';

-- 8. Filter employees who joined after 2022-01-01
SELECT * FROM employee
WHERE joining_date > '2022-01-01';

-- 9. Filter employees whose age is greater than 30
SELECT * FROM employee
WHERE age > 30;

-- 10. Filter employees whose salary is less than 50000
SELECT * FROM employee
WHERE salary < 50000;

-- 11. Filter employees from Chennai and salary greater than 60000
SELECT * FROM employee
WHERE city='Chennai'
AND salary > 60000;

-- 12. Filter employees from Mumbai or Pune
SELECT * FROM employee
WHERE city='Mumbai'
OR city='Pune';

-- 13. Filter employees whose name starts with 'S'
SELECT * FROM employee
WHERE emp_name LIKE 'S%';

-- 14. Filter employees whose name ends with 'a'
SELECT * FROM employee
WHERE emp_name LIKE '%a';

-- 15. Filter employees whose department is HR
SELECT * FROM employee
WHERE department='HR';

-- 16. Filter employees whose designation contains 'Engineer'
SELECT * FROM employee
WHERE designation LIKE '%Engineer%';

-- 17. Filter employees whose city is not Hyderabad
SELECT * FROM employee
WHERE city!='Hyderabad';

-- 18. Filter employees aged between 25 and 30
SELECT * FROM employee
WHERE age BETWEEN 25 AND 30;

-- 19. Filter employees with salary greater than 90000
SELECT * FROM employee
WHERE salary > 90000;

-- 20. Filter employees from Support department
SELECT * FROM employee
WHERE department='Support';
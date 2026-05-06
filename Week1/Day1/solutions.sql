-- 1.Select all columns from the Employee table
select * from Employee;

-- 2.Select only the name and salary columns from the Employee table.
select name, salary from Employee;

-- 3.Select employees who are older than 30.
select * from Employee where age > 30;

-- 4.Select the names of all departments.
select name from Department;

-- 5.Select employees who work in the IT department.
select * from Employee where department_id = 1;

-- 6.Select employees whose names start with 'J'.
select * from Employee where name like 'J%';

-- 7.Select employees whose names end with 'e'.
select * from Employee where name like '%e';

-- 8.Select employees whose names contain 'a'.
select * from Employee where name like '%a%';

-- 9.Select employees whose names are exactly 9 characters long.
select * from Employee where name like '_________';

-- 10.Select employees whose names have 'o' as the second character.
select * from Employee where name like '_o%';-- 1.Select all columns from the Employee table
select * from Employee;

-- 2.Select only the name and salary columns from the Employee table.
select name, salary from Employee;

-- 3.Select employees who are older than 30.
select * from Employee where age > 30;

-- 4.Select the names of all departments.
select name from Department;

-- 5.Select employees who work in the IT department.
select * from Employee where department_id = 1;

-- 6.Select employees whose names start with 'J'.
select * from Employee where name like 'J%';

-- 7.Select employees whose names end with 'e'.
select * from Employee where name like '%e';

-- 8.Select employees whose names contain 'a'.
select * from Employee where name like '%a%';

-- 9.Select employees whose names are exactly 9 characters long.
select * from Employee where name like '_________';

-- 10.Select employees whose names have 'o' as the second character.
select * from Employee where name like '_o%';

-- 11.Select employees hired in the year 2020.
select * from Employee where year(hire_date) = 2020;

-- 12.Select employees hired in January of any year.
select * from Employee where month(hire_date) = 1;

-- 13.Select employees hired before 2019.
select * from Employee where hire_date < '2019-01-01';

-- 14.Select employees hired on or after March 1, 2021.
select * from Employee where hire_date >= '2021-03-01';

-- 15.Select employees hired in the last 2 years.
select * from Employee 
where hire_date >= date_sub(curdate(), interval 2 year);

-- 16.Select the total salary of all employees.
select sum(salary) as total_salary from Employee;

-- 17.Select the average salary of employees.
select avg(salary) as average_salary from Employee;

-- 18.Select the minimum salary in the Employee table.
select min(salary) as minimum_salary from Employee;

-- 19.Select the number of employees in each department.
select department_id, count(*) as employee_count
from Employee
group by department_id;

-- 20.Select the average salary of employees in each department.
select department_id, avg(salary) as average_salary
from Employee
group by department_id;

-- 21.Select the total salary for each department.
select department_id, sum(salary) as total_salary
from Employee
group by department_id;

-- 22.Select the average age of employees in each department.
select department_id, avg(age) as average_age
from Employee
group by department_id;

-- 23.Select the number of employees hired in each year.
select year(hire_date) as hire_year, count(*) as employee_count
from Employee
group by year(hire_date);

-- 24.Select the highest salary in each department.
select department_id, max(salary) as highest_salary
from Employee
group by department_id;

-- 25.Select the department with the highest average salary.
select department_id, avg(salary) as average_salary
from Employee
group by department_id
order by average_salary desc
limit 1;

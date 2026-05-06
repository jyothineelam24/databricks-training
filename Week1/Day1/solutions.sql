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

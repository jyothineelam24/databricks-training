-- 1 ABS
SELECT ABS(-100);

-- 2 ROUND
SELECT emp_name,
ROUND(base_salary,0)
FROM employee_salary;

-- 3 ROUND 2 DECIMALS
SELECT emp_name,
ROUND(base_salary,2)
FROM employee_salary;

-- 4 CEIL
SELECT emp_name,
CEIL(base_salary)
FROM employee_salary;

-- 5 FLOOR
SELECT emp_name,
FLOOR(base_salary)
FROM employee_salary;

-- 6 TRUNCATE
SELECT emp_name,
TRUNCATE(base_salary,1)
FROM employee_salary;

-- 7 MOD
SELECT emp_name,
MOD(experience_years,2)
FROM employee_salary;

-- 8 POWER
SELECT POWER(2,3);

-- 9 SQRT
SELECT SQRT(64);

-- 10 SIGN
SELECT emp_name,
SIGN(base_salary)
FROM employee_salary;

-- 11 RAND
SELECT RAND();

-- 12 FORMAT
SELECT emp_name,
FORMAT(base_salary,2)
FROM employee_salary;

-- 13 GREATEST
SELECT emp_name,
GREATEST(base_salary,IFNULL(bonus,0))
FROM employee_salary;

-- 14 LEAST
SELECT emp_name,
LEAST(base_salary,IFNULL(bonus,0))
FROM employee_salary;
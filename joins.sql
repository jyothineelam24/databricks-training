-- 1 INNER JOIN
SELECT e.emp_name,
d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- 2 LEFT JOIN
SELECT e.emp_name,
d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- 3 RIGHT JOIN
SELECT e.emp_name,
d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- 4 SELF JOIN
SELECT e.emp_name AS employee,
m.emp_name AS manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;

-- 5 Employees with projects
SELECT e.emp_name,
p.project_name
FROM employees e
INNER JOIN projects p
ON e.emp_id = p.emp_id;

-- 6 Employees without projects
SELECT e.emp_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id
WHERE p.project_id IS NULL;

-- 7 Departments with employee count
SELECT d.dept_name,
COUNT(e.emp_id) AS total_employees
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- 8 Employees and managers
SELECT e.emp_name,
m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;

-- 9 Projects with employee names
SELECT p.project_name,
e.emp_name
FROM projects p
LEFT JOIN employees e
ON p.emp_id = e.emp_id;

-- 10 Employees from IT department
SELECT e.emp_name,
d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';
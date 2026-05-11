INSERT INTO students VALUES
(1, 'Alice Johnson', 'alice@email.com'),
(2, 'Bob Smith', 'bob@email.com'),
(3, 'Charlie Brown', 'charlie@email.com'),
(4, 'Diana Prince', 'diana@email.com'),
(5, 'Ethan Hunt', 'ethan@email.com');

INSERT INTO instructors VALUES
(1, 'John Doe'),
(2, 'Sarah Lee'),
(3, 'Michael Scott'),
(4, 'Emma Watson');

INSERT INTO courses VALUES
(101, 'SQL Basics', 1),
(102, 'Python Fundamentals', 2),
(103, 'Data Analytics', NULL),
(104, 'Cloud Computing', 3),
(105, 'Machine Learning', NULL);

INSERT INTO enrollments VALUES
(1, 1, 101),
(2, 2, 102),
(3, 3, 101),
(4, 4, 104);

--JOINS

-- 1. Display all students and the courses they are enrolled in

SELECT s.student_name, c.course_name
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id
LEFT JOIN courses c
ON e.course_id = c.course_id;

-- 2. Find all courses that currently have no students enrolled

SELECT c.course_name
FROM courses c
LEFT JOIN enrollments e
ON c.course_id = e.course_id
WHERE e.course_id IS NULL;

-- 3. Display all instructors and the courses they teach

SELECT i.instructor_name, c.course_name
FROM instructors i
LEFT JOIN courses c
ON i.instructor_id = c.instructor_id;

-- 4. Find all courses that do not have an instructor assigned

SELECT course_name
FROM courses
WHERE instructor_id IS NULL;

-- 5. Display all students and enrollment information using RIGHT JOIN

SELECT s.student_name, e.enrollment_id, e.course_id
FROM enrollments e
RIGHT JOIN students s
ON e.student_id = s.student_id;

-- 6. Find students who are not enrolled in any course

SELECT s.student_name
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id
WHERE e.student_id IS NULL;

-- 7. FULL OUTER JOIN using UNION

SELECT s.student_name, e.enrollment_id
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id

UNION

SELECT s.student_name, e.enrollment_id
FROM students s
RIGHT JOIN enrollments e
ON s.student_id = e.student_id;

-- 8. Find all courses that never appeared in enrollments table

SELECT c.course_name
FROM courses c
LEFT JOIN enrollments e
ON c.course_id = e.course_id
WHERE e.course_id IS NULL;

-- 9. FULL OUTER JOIN for instructors and courses

SELECT i.instructor_name, c.course_name
FROM instructors i
LEFT JOIN courses c
ON i.instructor_id = c.instructor_id

UNION

SELECT i.instructor_name, c.course_name
FROM instructors i
RIGHT JOIN courses c
ON i.instructor_id = c.instructor_id;

-- 10. Student name, course name, and instructor name report

SELECT s.student_name,
       c.course_name,
       i.instructor_name
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id
LEFT JOIN courses c
ON e.course_id = c.course_id
LEFT JOIN instructors i
ON c.instructor_id = i.instructor_id;

-- Bonus Challenge

SELECT s.student_name, c.course_name
FROM students s
CROSS JOIN courses c;
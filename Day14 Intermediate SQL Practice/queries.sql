-- Basic SELECT + WHERE + ORDER BY
-- List all employees in the 'IT' department sorted by their salary in descending order
SELECT name, salary
FROM employees
WHERE dept_id = (SELECT dept_id FROM departments WHERE dept_name = 'Cybersecurity')
ORDER BY salary DESC;

-- Aggregate Functions + GROUP BY
-- Find the average salary for each department
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id;

-- HAVING Clause
-- Departments where the average salary is greater than 60000
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id
HAVING AVG(salary) > 60000;

-- JOIN 
-- Show employee names with their department names
SELECT e.name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;

-- Advanced JOIN
-- Show all employees and their department names (including employees without department and departments without employees)
SELECT e.name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
UNION
SELECT e.name, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- Subquery in WHERE
-- Employees earning more than the average salary in their department
SELECT name, salary, dept_id
FROM employees e
WHERE salary > (
    SELECT AVG(salary) 
    FROM employees 
    WHERE dept_id = e.dept_id
);

-- String Function
-- Show employee names in uppercase with length of their first name
SELECT UPPER(name) AS upper_name, LENGTH(name) AS name_length
FROM employees;

-- Date and Time Function
-- Employees who joined in the year 2020
SELECT name, hire_date
FROM employees
WHERE YEAR(hire_date) = 2020;

-- Date Function (MONTHNAME)
-- Show employees and the month they joined
SELECT name, MONTHNAME(hire_date) AS join_month
FROM employees;

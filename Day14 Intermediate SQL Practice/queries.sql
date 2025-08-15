-- Basic SELECT + WHERE + ORDER BY
-- List all employees in the 'IT' department sorted by their salary in descending order
SELECT first_name, last_name, salary
FROM employees
WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'IT')
ORDER BY salary DESC;

-- Aggregate Functions + GROUP BY
-- Find the average salary for each department
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;

-- HAVING Clause
-- Departments where the average salary is greater than 60000
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 60000;

-- JOIN 
-- Show employee names with their department names
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

-- Advanced JOIN
-- Show all employees and their department names (including employees without department and departments without employees)
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
FULL OUTER JOIN departments d
ON e.department_id = d.department_id;

-- Subquery in WHERE
-- Employees earning more than the average salary in their department
SELECT first_name, last_name, salary, department_id
FROM employees e
WHERE salary > (
    SELECT AVG(salary) 
    FROM employees 
    WHERE department_id = e.department_id
);

-- Set Operation (UNION)
-- List all unique job titles from employees and departments (if department table has manager titles)
SELECT job_title FROM employees
UNION
SELECT manager_title FROM departments;

-- Set Operation (INTERSECT)
-- Find common job titles present in both employees and department managers
SELECT job_title FROM employees
INTERSECT
SELECT manager_title FROM departments;

-- String Function
-- Show employee names in uppercase with length of their first name
SELECT UPPER(first_name) AS upper_name, LENGTH(first_name) AS name_length
FROM employees;

-- String Function (TRIM & CONCAT)
-- Combine first name and last name into full name without extra spaces
SELECT CONCAT(TRIM(first_name), ' ', TRIM(last_name)) AS full_name
FROM employees;

-- Date and Time Function
-- Employees who joined in the year 2020
SELECT first_name, last_name, hire_date
FROM employees
WHERE YEAR(hire_date) = 2020;

-- Date Function (MONTHNAME)
-- Show employees and the month they joined
SELECT first_name, last_name, MONTHNAME(hire_date) AS join_month
FROM employees;

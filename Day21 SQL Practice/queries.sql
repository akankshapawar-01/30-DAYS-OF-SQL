--Basic SELECT + WHERE
--List employees older than 30.
SELECT name, age
FROM employees
WHERE age > 30;

-- Aggregate Functions + GROUP BY
-- Average salary in each department.
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id;

-- HAVING Clause
-- Departments with average salary > 60,000.
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id
HAVING AVG(salary) > 60000;

-- JOIN
-- Show employee names with their department names.
SELECT e.name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;

-- LEFT JOIN + Conditional Aggregate
-- Departments with count of employees earning > 70,000.
SELECT d.dept_name, COUNT(CASE WHEN e.salary > 70000 THEN 1 END) AS high_salary_count
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- Subquery in WHERE
-- Employees earning more than the average salary of their department.
SELECT name, salary, dept_id
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE dept_id = e.dept_id
);

-- Window Functions
-- Assign row numbers to employees within each department ordered by salary descending.
SELECT name, dept_id, salary,
       ROW_NUMBER() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS row_num
FROM employees;

-- String Function
-- Show employee names in uppercase and their name length.
SELECT UPPER(name) AS upper_name, LENGTH(name) AS name_length
FROM employees;

-- Date and Time Function
-- Employees who joined in 2021.
SELECT name, hire_date
FROM employees
WHERE YEAR(hire_date) = 2021;

-- Transactions
-- Example of transaction for salary update.
START TRANSACTION;
UPDATE employees
SET salary = salary + 5000
WHERE dept_id = 1000;
-- Rollback if needed
-- ROLLBACK;
-- Commit changes
COMMIT;

-- Constraint Check
-- Count distinct departments.
SELECT COUNT(DISTINCT dept_id) AS unique_departments
FROM employees;

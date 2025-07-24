-- View all employees
SELECT * FROM employees;

-- Select name and age
SELECT name, age FROM employees;

-- Employees older than 30
SELECT * FROM employees WHERE age > 30;

-- Employees with salary > 50000
SELECT name, salary FROM employees WHERE salary > 50000;

-- Employees from dept 1001
SELECT name, dept_id FROM employees WHERE dept_id = 1001;

-- Exclude dept 1003
SELECT name, dept_id FROM employees WHERE dept_id != 1003;

-- Hired after 2020
SELECT name, hire_date FROM employees WHERE hire_date > '2020-01-01';

-- Employees from dept 1004 with salary > 60000
SELECT name, salary FROM employees WHERE dept_id = 1004 AND salary > 60000;

-- Age < 25 OR salary > 80000
SELECT name, age FROM employees WHERE age < 25 OR salary > 80000;

-- Combined AND and OR
SELECT * FROM employees WHERE dept_id = 1001 AND (salary > 60000 OR age < 30);

-- Find employee by name
SELECT * FROM employees WHERE name = 'Rakesh Kumar';

-- Missing salary
SELECT * FROM employees WHERE salary IS NULL;

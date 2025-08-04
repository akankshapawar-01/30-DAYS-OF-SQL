-- Employees older than 30
SELECT name, age FROM employees WHERE age > 30;

-- Employees with salary less than 50000
SELECT name, salary FROM employees WHERE salary < 50000;

-- Employees hired on or after 2023
SELECT name, hire_date FROM employees WHERE hire_date >= '2023-01-01';

-- Employees from department 1003
SELECT name, dept_id FROM employees WHERE dept_id = 1003;

-- Exclude employees from department 1002
SELECT name, dept_id FROM employees WHERE dept_id != 1002;

-- Employees with salary between 50000 and 80000
SELECT name, salary FROM employees WHERE salary BETWEEN 50000 AND 80000;

-- Employees hired between 2020 and 2023
SELECT name, hire_date FROM employees 
WHERE hire_date BETWEEN '2020-01-01' AND '2023-12-31';

-- Employees in departments 1001, 1003, and 1005
SELECT name, dept_id FROM employees WHERE dept_id IN (1001, 1003, 1005);

-- Employees not in departments 1001 and 1004
SELECT name, dept_id FROM employees WHERE dept_id NOT IN (1001, 1004);

-- Employees whose name starts with 'R'
SELECT name FROM employees WHERE name LIKE 'R%';

-- Employees whose name ends with 'a'
SELECT name FROM employees WHERE name LIKE '%a';

-- Employees whose name contains 'Sh'
SELECT name FROM employees WHERE name LIKE '%Sh%';

-- Employees with missing salary
SELECT * FROM employees WHERE salary IS NULL;

-- Employees where salary is not null
SELECT * FROM employees WHERE salary IS NOT NULL;

-- Employees not hired in 2023
SELECT name, hire_date FROM employees 
WHERE NOT hire_date BETWEEN '2023-01-01' AND '2023-12-31';

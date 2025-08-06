-- Count total number of employees
SELECT COUNT(*) AS total_employees FROM employees;

-- Calculate the total salary of all employees
SELECT SUM(salary) AS total_salary FROM employees;

-- Find the average salary of employees
SELECT AVG(salary) AS average_salary FROM employees;

-- Get the highest salary in the company
SELECT MAX(salary) AS highest_salary FROM employees;

-- Get the lowest salary in the company
SELECT MIN(salary) AS lowest_salary FROM employees;

-- Count the number of employees in each department
SELECT dept_id, COUNT(*) AS total_employees
FROM employees
GROUP BY dept_id;

-- Find average salary for each department
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id;

-- Calculate the total salary per department
SELECT dept_id, SUM(salary) AS total_salary
FROM employees
GROUP BY dept_id;

-- Find maximum and minimum salary in each department
SELECT dept_id, MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees
GROUP BY dept_id;

-- Count employees hired in each year
SELECT YEAR(hire_date) AS hire_year, COUNT(*) AS total_hires
FROM employees
GROUP BY YEAR(hire_date)
ORDER BY hire_year ASC;

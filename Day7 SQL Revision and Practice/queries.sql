-- List names and salary of employees who earn less than ₹60,000:
SELECT name, salary
FROM employees
WHERE salary < 60000;

-- Show employees who joined between 2019 and 2022:
SELECT name, hire_date
FROM employees
WHERE hire_date BETWEEN '2019-01-01' AND '2022-12-31';

-- List employees sorted by age (youngest to oldest):
SELECT name, age
FROM employees
ORDER BY age ASC;

-- List employees sorted by department and salary (highest first):
SELECT name, dept_id, salary
FROM employees
ORDER BY dept_id, salary DESC;

-- Show total salary paid to all employees:
SELECT SUM(salary) AS total_salary
FROM employees;

-- Display number of unique department:
SELECT COUNT(DISTINCT dept_id) AS unique_departments
FROM employees;

-- Count how many employees were hired each year:
SELECT YEAR(hire_date) AS year_joined, COUNT(*) AS emp_count
FROM employees
GROUP BY YEAR(hire_date);

-- Show average age of employees in each department:
SELECT dept_id, AVG(age) AS avg_age
FROM employees
GROUP BY dept_id;

-- Departments with average salary between ₹50,000 and ₹80,000:
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id
HAVING AVG(salary) BETWEEN 50000 AND 80000;

-- Departments where the minimum salary is above ₹30,000:
SELECT dept_id, MIN(salary) AS min_salary
FROM employees
GROUP BY dept_id
HAVING MIN(salary) > 30000;

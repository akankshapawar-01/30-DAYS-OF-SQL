-- Departments with more than 3 employees
SELECT dept_id, COUNT(*) AS employee_count
FROM employees
GROUP BY dept_id
HAVING COUNT(*) > 3;

-- Departments with average salary above ₹50,000
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id
HAVING AVG(salary) > 50000;

-- Departments with more than 2 employees hired after 2020
SELECT dept_id, COUNT(*) AS employee_count
FROM employees
WHERE hire_date > '2020-01-01'
GROUP BY dept_id
HAVING COUNT(*) > 2;

-- Departments with total salary above ₹2,00,000
SELECT dept_id, SUM(salary) AS total_salary
FROM employees
GROUP BY dept_id
HAVING SUM(salary) > 200000;

-- Departments where total salary of employees with salary > ₹40,000 exceeds ₹1,50,000
SELECT dept_id, SUM(salary) AS total_salary
FROM employees
WHERE salary > 40000
GROUP BY dept_id
HAVING SUM(salary) > 150000;

-- Departments where highest salary is more than ₹90,000
SELECT dept_id, MAX(salary) AS max_salary
FROM employees
GROUP BY dept_id
HAVING MAX(salary) > 90000;

-- Departments where lowest salary is less than ₹50,000
SELECT dept_id, MIN(salary) AS min_salary
FROM employees
GROUP BY dept_id
HAVING MIN(salary) < 50000;

-- Departments with average salary above ₹60,000, but only for employees aged under 40
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
WHERE age < 40
GROUP BY dept_id
HAVING AVG(salary) > 60000;

-- Departments with exactly 2 employees
SELECT dept_id, COUNT(*) AS employee_count
FROM employees
GROUP BY dept_id
HAVING COUNT(*) = 2;

-- Departments with at least 3 employees joined in or after 2020
SELECT dept_id, COUNT(*) AS joined_count
FROM employees
WHERE hire_date >= '2020-03-15'
GROUP BY dept_id
HAVING COUNT(*) >= 3;

-- Departments where max salary among employees under 35 is more than ₹80,000
SELECT dept_id, MAX(salary) AS highest_salary
FROM employees
WHERE age < 35
GROUP BY dept_id
HAVING MAX(salary) > 80000;

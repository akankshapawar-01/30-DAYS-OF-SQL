-- Show today's date
SELECT CURRENT_DATE AS today_date;

-- Show current date and time
SELECT NOW() AS current_datetime;

-- Extract only the date part from hire_date
SELECT emp_id, name, DATE(hire_date) AS hire_date_only
FROM employees;

-- Extract the year employees were hired
SELECT emp_id, name, YEAR(hire_date) AS hire_year
FROM employees;

-- Extract the month employees were hired
SELECT emp_id, name, MONTH(hire_date) AS hire_month
FROM employees;

-- Show employees hired in the last 180 days
USE employee_db;
SELECT emp_id, name, hire_date
FROM employees
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 180 DAY);

-- Number of days each employee has worked
SELECT emp_id, name, 
       DATEDIFF(CURDATE(), hire_date) AS days_worked
FROM employees;

-- 1 year after hire
SELECT emp_id, name,
       DATE_ADD(hire_date, INTERVAL 1 YEAR) AS one_year_after_hire
FROM employees;

-- Subtract 3 months from hire_date
SELECT emp_id, name,
       DATE_SUB(hire_date, INTERVAL 3 MONTH) AS adjusted_date
FROM employees;

-- Format hire_date in a readable way
SELECT emp_id, name,
       DATE_FORMAT(hire_date, '%W, %M %d %Y') AS formatted_hire_date
FROM employees;

-- Difference in months between hire_date and today
SELECT emp_id, name,
       TIMESTAMPDIFF(MONTH, hire_date, CURDATE()) AS months_worked
FROM employees;

-- Employees hired before 2023
SELECT emp_id, name, hire_date
FROM employees
WHERE hire_date < '2023-01-01';

-- Department-wise earliest hire date
SELECT d.dept_name, MIN(e.hire_date) AS earliest_hire
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

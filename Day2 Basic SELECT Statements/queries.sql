-- View all employees
SELECT * FROM employees;

-- Select name and age
SELECT name, age FROM employees;

-- View all departments
SELECT * FROM departments;

-- Select specific columns
SELECT name, age FROM employees;

-- Display employee name and annual salary (calculated)
SELECT name, salary, salary * 12 AS annual_salary FROM employees;

-- Display department IDs only (distinct values)
SELECT DISTINCT dept_id FROM employees;

-- Show all department names
SELECT dept_name FROM departments;

-- Show employee name with department ID as a single column
SELECT CONCAT(name, ' works in dept ', dept_id) AS employee_department FROM employees;

-- Show first 5 employees
SELECT * FROM employees LIMIT 5;

-- Alias columns for better readability
SELECT name AS EmployeeName, hire_date AS JoiningDate FROM employees;

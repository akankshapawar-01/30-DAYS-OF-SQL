-- Page 1: First 5 employeesSELECT emp_id, name, dept_id
SELECT emp_id, name, dept_id
FROM employees
ORDER BY emp_id
LIMIT 5 OFFSET 0;

-- Page 2: Next 5 employees
SELECT emp_id, name, dept_id
FROM employees
ORDER BY emp_id
LIMIT 5 OFFSET 5;

-- Page 3: Employees 11 to 15
SELECT emp_id, name, dept_id
FROM employees
ORDER BY emp_id
LIMIT 5 OFFSET 10;

-- General pagination query
-- Suppose page_size = 5 and page_number = 3
-- OFFSET = (3-1) * 5 = 10
SELECT emp_id, name, dept_id
FROM employees
ORDER BY emp_id
LIMIT 5 OFFSET 10;

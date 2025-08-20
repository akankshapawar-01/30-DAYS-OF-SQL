-- Index on salary for faster range queries
CREATE INDEX idx_emp_salary ON employees(salary);

-- Index on department name for quick lookup
CREATE INDEX idx_dept_name ON departments(dept_name);

-- View all indexes on employees table
SHOW INDEX FROM employees;

-- Drop index on employee salary
DROP INDEX idx_emp_salary ON employees;

-- Query without index
SELECT * FROM employees WHERE name = 'Rakesh';

-- Using index on department
SELECT * 
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
WHERE d.dept_name = 'Cybersecurity';

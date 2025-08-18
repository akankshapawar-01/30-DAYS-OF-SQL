-- Checking PRIMARY KEY constraint on emp_id
SELECT emp_id, COUNT(*) AS duplicate_count
FROM employees
GROUP BY emp_id
HAVING COUNT(*) > 1;

-- Checking FOREIGN KEY constraint between employees.dept_id and departments.dept_id
SELECT e.emp_id, e.name, e.dept_id
FROM employees e
LEFT JOIN departments d 
  ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;

-- Show all constraints in employees table
SELECT constraint_name, constraint_type, table_name
FROM information_schema.table_constraints
WHERE table_name = 'employees';

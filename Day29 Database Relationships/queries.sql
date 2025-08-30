-- One Department → Many Employees
-- Show all employees in each department
SELECT d.dept_name, e.emp_id, e.name
FROM Departments d
JOIN Employees e ON d.dept_id = e.dept_id;

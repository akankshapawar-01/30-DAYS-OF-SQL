-- INNER JOIN – Get all employees with their department names
SELECT e.emp_id, e.name, e.salary, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- LEFT JOIN – Show all employees and their departments (including unmatched departments)
SELECT e.emp_id, e.name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- RIGHT JOIN – Show all departments and employees (including departments with no employees)
SELECT e.emp_id, e.name, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- FULL OUTER JOIN – Show all employees and departments (even if they don’t match)
-(Note: MySQL doesn’t support FULL OUTER JOIN directly; you can simulate it with UNION)
SELECT e.emp_id, e.name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
UNION
SELECT e.emp_id, e.name, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- INNER JOIN with Condition – Employees earning more than ₹70,000
SELECT e.name, e.salary, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.salary > 70000;

-- LEFT JOIN – Departments with average salary of employees
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

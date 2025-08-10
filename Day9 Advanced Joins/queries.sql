-- Self Join: Employees working in the same department
SELECT e1.name AS employee_1, e2.name AS employee_2, d.dept_name
FROM employees e1
JOIN employees e2 
ON e1.dept_id = e2.dept_id AND e1.emp_id < e2.emp_id
JOIN departments d 
ON e1.dept_id = d.dept_id;

-- Self Join: Employees who joined on the same date
SELECT e1.name AS employee_1, e2.name AS employee_2, e1.hire_date
FROM employees e1
JOIN employees e2 
ON e1.hire_date = e2.hire_date AND e1.emp_id < e2.emp_id;

-- Cross Join: All possible employee-department combinations
SELECT e.name AS employee_name, d.dept_name
FROM employees e
CROSS JOIN departments d;

-- Join with Aggregate: Average salary by department
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM departments d
JOIN employees e 
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- Join with Aggregate: Count of employees in each department
SELECT d.dept_name, COUNT(e.emp_id) AS emp_count
FROM departments d
LEFT JOIN employees e 
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- Join with Aggregate and Filter: Departments with average salary > ₹70,000
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM departments d
JOIN employees e 
ON d.dept_id = e.dept_id
GROUP BY d.dept_name
HAVING AVG(e.salary) > 70000;

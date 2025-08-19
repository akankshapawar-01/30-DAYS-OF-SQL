-- Get employee details with department names using CTE
WITH EmpDept AS (
    SELECT e.emp_id, e.name, e.salary, d.dept_name
    FROM employees e
    JOIN departments d ON e.dept_id = d.dept_id
)
SELECT * 
FROM EmpDept;

--  Filter employees with salary > 50000 using CTE
WITH HighSalary AS (
    SELECT emp_id, name, salary
    FROM employees
    WHERE salary > 50000
)
SELECT * 
FROM HighSalary;

-- Calculate average salary per department
WITH DeptAvg AS (
    SELECT dept_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY dept_id
)
SELECT d.dept_name, da.avg_salary
FROM DeptAvg da
JOIN departments d ON da.dept_id = d.dept_id;

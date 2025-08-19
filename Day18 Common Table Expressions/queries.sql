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

-- Recursive CTE Example:
-- Normally used for hierarchical/self-referencing data (e.g., employees with manager_id).
-- Dataset does not have a manager column, so recursion is not possible.
-- Below is a generic recursive CTE example (generating numbers 1 to 10).
WITH RECURSIVE Numbers AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1
    FROM Numbers
    WHERE n < 10
)
SELECT * FROM Numbers;

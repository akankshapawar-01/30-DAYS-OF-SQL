-- Subquery in SELECT clause
-- Find each employee’s salary and the company’s average salary in the same row
SELECT name,salary,
(SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;

-- Subquery in WHERE clause
-- Find employees who earn more than the average salary
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Subquery in FROM clause
-- Find the average salary per department using a subquery table
SELECT dept_id, avg_salary
FROM (
    SELECT dept_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY dept_id
) AS dept_avg;

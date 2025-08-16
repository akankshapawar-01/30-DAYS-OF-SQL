-- GROUP_CONCAT()
-- Show all employees in each department as a single string
SELECT dept_id, GROUP_CONCAT(name ORDER BY name SEPARATOR ', ') AS employees_list
FROM employees
GROUP BY dept_id;

-- STDDEV() and VARIANCE()
-- Find the standard deviation and variance of salaries in each department
SELECT dept_id,
       STDDEV(salary) AS salary_stddev,
       VARIANCE(salary) AS salary_variance
FROM employees
GROUP BY dept_id;

-- Check overall company salary spread
SELECT STDDEV(salary) AS company_salary_stddev,
       VARIANCE(salary) AS company_salary_variance
FROM employees;

-- ROLLUP
-- Department-wise salary totals + company grand total
SELECT dept_id, SUM(salary) AS total_salary
FROM employees
GROUP BY dept_id WITH ROLLUP;

-- Count of employees per department + grand total
SELECT dept_id, COUNT(*) AS employee_count
FROM employees
GROUP BY dept_id WITH ROLLUP;

-- COUNT(DISTINCT CASE … END)
-- Count distinct departments with employees earning more than 60k
SELECT COUNT(DISTINCT CASE WHEN salary > 60000 THEN dept_id END) AS high_salary_departments
FROM employees;

-- Count employees who earn above vs below 50k
SELECT 
    COUNT(CASE WHEN salary > 50000 THEN 1 END) AS above_50k,
    COUNT(CASE WHEN salary <= 50000 THEN 1 END) AS below_50k
FROM employees;

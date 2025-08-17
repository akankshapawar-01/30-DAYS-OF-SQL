-- ROW_NUMBER()
-- Assign unique sequential numbers within a partition
SELECT emp_id, name, dept_id, salary,
       ROW_NUMBER() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS row_num
FROM employees;

-- RANK()
-- Assign rank with gaps in ranking for ties
SELECT emp_id, name, dept_id, salary,
       RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS rank_salary
FROM employees;

-- DENSE_RANK()
-- Assign rank without gaps for ties
SELECT emp_id, name, dept_id, salary,
       DENSE_RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS dense_rank_salary
FROM employees;

-- NTILE()
-- Divide rows into 4 groups (quartiles) by salary
SELECT emp_id, name, salary,
       NTILE(4) OVER (ORDER BY salary DESC) AS salary_quartile
FROM employees;

-- LEAD()
-- Retrieve next row’s salary
SELECT emp_id, name, salary,
       LEAD(salary, 1) OVER (ORDER BY salary) AS next_salary
FROM employees;

-- LAG()
-- Retrieve previous row’s salary
SELECT emp_id, name, salary,
       LAG(salary, 1) OVER (ORDER BY salary) AS previous_salary
FROM employees;

-- FIRST_VALUE()
-- Get highest salary in each department
SELECT emp_id, name, dept_id, salary,
       FIRST_VALUE(salary) OVER (PARTITION BY dept_id ORDER BY salary DESC) AS highest_salary_in_dept
FROM employees;

-- LAST_VALUE()
-- Get lowest salary in each department
SELECT emp_id, name, dept_id, salary,
       LAST_VALUE(salary) OVER (PARTITION BY dept_id ORDER BY salary DESC
           ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS lowest_salary_in_dept
FROM employees;

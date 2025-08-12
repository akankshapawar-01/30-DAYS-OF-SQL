-- UNION 
-- Combine employees from two departments (remove duplicates)
SELECT name, dept_id
FROM employees
WHERE dept_id = 1000
UNION
SELECT name, dept_id
FROM employees
WHERE dept_id = 1001;

-- UNION ALL 
-- Combine employees from two departments (keep duplicates)
SELECT name, dept_id
FROM employees
WHERE dept_id IN (1000, 1001)
UNION ALL
SELECT name, dept_id
FROM employees
WHERE dept_id IN (1000, 1001);

-- INTERSECT
-- Employees common to two queries
-- (MySQL doesn’t support INTERSECT directly, but you can simulate it with INNER JOIN)
SELECT e1.name, e1.dept_id
FROM (
    SELECT name, dept_id FROM employees WHERE dept_id = 1000
) e1
INNER JOIN (
    SELECT name, dept_id FROM employees WHERE dept_id = 1001
) e2
ON e1.name = e2.name;

-- EXCEPT 
-- Employees in one set but not in another
-- (MySQL doesn’t support EXCEPT, but we can use LEFT JOIN with NULL check)
SELECT e1.name, e1.dept_id
FROM (
    SELECT name, dept_id FROM employees WHERE dept_id = 1000
) e1
LEFT JOIN (
    SELECT name, dept_id FROM employees WHERE dept_id = 1001
) e2
ON e1.name = e2.name
WHERE e2.name IS NULL;

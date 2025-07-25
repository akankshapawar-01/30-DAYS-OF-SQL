-- Employees older than 25 AND earning more than ₹40,000
SELECT * FROM employees 
WHERE age > 25 AND salary > 40000;

--Employees from either department 1001 OR 1002
SELECT * FROM employees 
WHERE dept_id = 1001 OR dept_id = 1002;

--Employees who are not in department 1005
SELECT * FROM employees 
WHERE NOT dept_id = 1005;

--Employees whose salary is between ₹40,000 and ₹50,000 
SELECT * FROM employees 
WHERE salary BETWEEN 40000 AND 50000;

--Employees from departments 1000, 1003, or 1006
SELECT * FROM employees 
WHERE dept_id IN (1000, 1003, 1006);

--Employees whose name starts with 'P'
SELECT * FROM employees 
WHERE name LIKE 'P%';

--Employees whose name ends with 'a'
SELECT * FROM employees 
WHERE name LIKE '%a';

-- Names that contain 'raj' anywhere
SELECT * FROM employees 
WHERE name LIKE '%raj%';

--Employees earning > ₹40k, aged < 30, from dept 1000 or 1001
SELECT * FROM employees 
WHERE (salary > 40000 AND age < 30) 
AND dept_id IN (1000, 1001);

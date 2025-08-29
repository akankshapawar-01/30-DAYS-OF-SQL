-- Basic SELECT
-- Show all employees from the employees table
SELECT * FROM employees;

-- Display employee name and salary only
SELECT name, salary FROM employees;

-- Filtering (WHERE)
-- Show employees with salary greater than 50,000
SELECT * FROM employees WHERE salary > 50000;

-- Show employees who belong to department 1001
SELECT * FROM employees WHERE dept_id = 1001;

-- ORDER BY
-- Display employees ordered by salary in descending order
SELECT * FROM employees ORDER BY salary DESC;

-- DISTINCT
-- Find distinct department IDs from employees
SELECT DISTINCT dept_id FROM employees;

-- LIMIT
-- Show top 5 highest paid employees
SELECT * FROM employees ORDER BY salary DESC LIMIT 5;

-- Aggregate Functions
-- Find total number of employees
SELECT COUNT(*) AS total_employees FROM employees;

-- Find average salary of employees
SELECT AVG(salary) AS avg_salary FROM employees;

-- GROUP BY
-- Find average salary department-wise
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id;

-- HAVING
-- Show departments having more than 5 employees
SELECT dept_id, COUNT(*) AS emp_count
FROM employees
GROUP BY dept_id
HAVING COUNT(*) > 5;

-- Aliases
-- Show employee name as Employee_Name and salary as Monthly_Salary
SELECT name AS Employee_Name, salary AS Monthly_Salary FROM employees;

-- Joins
-- Display employee name with department name
SELECT e.name, d.dept_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

-- Subqueries
-- Find employees earning more than average salary
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- EXISTS
-- Find departments having at least one employee
SELECT dept_name
FROM departments d
WHERE EXISTS (SELECT 1 FROM employees e WHERE e.dept_id = d.dept_id);

-- IN
-- Find employees who belong to departments 1001 or 1002
SELECT name FROM employees WHERE dept_id IN (1001, 1002);

-- CASE
-- Show salary grade (High/Medium/Low) of each employee
SELECT name, salary,
CASE 
    WHEN salary > 70000 THEN 'High'
    WHEN salary BETWEEN 40000 AND 70000 THEN 'Medium'
    ELSE 'Low'
END AS Salary_Grade
FROM employees;

-- CREATE TABLE
-- Create a table to store employee history
CREATE TABLE emp_history (
    emp_id INT,
    old_salary DECIMAL(10,2),
    new_salary DECIMAL(10,2),
    change_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ALTER
-- Add a new column email to employees table
ALTER TABLE employees ADD COLUMN email VARCHAR(100);

-- Index
-- Create index on salary column for faster search
CREATE INDEX idx_salary ON employees(salary);

-- Views
-- Create a view of high salary employees (above 60,000)
CREATE VIEW high_salary_emps AS
SELECT name, salary FROM employees WHERE salary > 60000;

-- Call the procedure
CALL GetEmployeesByDept(1001);

-- Functions
-- Create a function to get yearly salary of an employee
DELIMITER //
CREATE FUNCTION yearly_salary(empId INT) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE y_salary DECIMAL(10,2);
    SELECT salary * 12 INTO y_salary FROM employees WHERE emp_id = empId;
    RETURN y_salary;
END //
DELIMITER ;

-- Call function
SELECT yearly_salary(1);

-- Events
-- Create event to increase salary of all employees by 5% every year
DELIMITER //
CREATE EVENT yearly_increment
ON SCHEDULE EVERY 1 YEAR
DO
BEGIN
    UPDATE employees SET salary = salary * 1.05;
END //
DELIMITER ;

-- Error Handling (Basic)
-- Try inserting duplicate primary key (will show error)
INSERT INTO employees(emp_id, name, salary, dept_id) 
VALUES (1, 'Test', 50000, 1001);

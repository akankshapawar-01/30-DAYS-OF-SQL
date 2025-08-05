-- List all employees sorted by name (A-Z)
SELECT name, age, salary FROM employees ORDER BY name ASC;

-- List all departments sorted by department name (A-Z)
SELECT dept_id, dept_name FROM departments ORDER BY dept_name ASC;

-- List all employees sorted by name (Z-A)
SELECT name, age, salary FROM employees ORDER BY name DESC;

-- List all departments sorted by department name (Z-A)
SELECT dept_id, dept_name FROM departments ORDER BY dept_name DESC;

-- List all departments sorted by department ID in descending order
SELECT dept_id, dept_name FROM departments ORDER BY dept_id DESC;

-- Sort employees by salary in ascending order
SELECT name, salary FROM employees ORDER BY salary ASC;

-- Sort employees by salary in descending order
SELECT name, salary FROM employees ORDER BY salary DESC;

-- Sort employees by hire date (oldest first)
SELECT name, hire_date FROM employees ORDER BY hire_date ASC;

-- Sort employees by hire date (newest first)
SELECT name, hire_date FROM employees ORDER BY hire_date DESC;

-- Sort employees first by department ID, then by name
SELECT name, dept_id FROM employees ORDER BY dept_id ASC, name ASC;

-- Sort employees by age in descending order and show top 5 oldest
SELECT name, age FROM employees ORDER BY age DESC LIMIT 5;

-- Sort employees by salary and show only top 3 highest paid
SELECT name, salary FROM employees ORDER BY salary DESC LIMIT 3;

-- Sort employees by salary (highest first), if salary same then by age (youngest first)
SELECT name, salary, age FROM employees ORDER BY salary DESC, age ASC;

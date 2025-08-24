-- Write a stored procedure to fetch all employees from a given department.
DELIMITER //
CREATE PROCEDURE GetEmployeesByDept(IN deptId INT)
BEGIN
    SELECT emp_id, name, salary, dept_id
    FROM employees
    WHERE dept_id = deptId;
END //
DELIMITER ;

CALL GetEmployeesByDept(1001);

-- Write a stored procedure to increase an employee’s salary by a given percentage.
DELIMITER //
CREATE PROCEDURE UpdateSalary(IN empId INT, IN percentIncrease DECIMAL(5,2))
BEGIN
    UPDATE employees
    SET salary = salary + (salary * percentIncrease / 100)
    WHERE emp_id = empId;
END //
DELIMITER ;

CALL UpdateSalary(6, 10);

-- Q: Write a function to calculate the annual salary of an employee.
DELIMITER //
CREATE FUNCTION GetAnnualSalary(empId INT) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE annualSalary DECIMAL(10,2);
    SELECT salary * 12 INTO annualSalary
    FROM employees
    WHERE emp_id = empId;
    RETURN annualSalary;
END //
DELIMITER ;

SELECT GetAnnualSalary(8);

-- Q: Write a function to return the number of employees in a department.
DELIMITER //
CREATE FUNCTION CountEmployeesByDept(deptId INT) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE empCount INT;
    SELECT COUNT(*) INTO empCount
    FROM employees
    WHERE dept_id = deptId;
    RETURN empCount;
END //
DELIMITER ;

SELECT CountEmployeesByDept(1005);

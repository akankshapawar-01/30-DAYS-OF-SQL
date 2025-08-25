-- Log salary changes whenever an update happens
CREATE TABLE salary_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT,
    old_salary DECIMAL(10,2),
    new_salary DECIMAL(10,2),
    change_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //
CREATE TRIGGER after_salary_update
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
    IF OLD.salary <> NEW.salary THEN
        INSERT INTO salary_changes (emp_id, old_salary, new_salary, change_date)
        VALUES (OLD.emp_id, OLD.salary, NEW.salary, NOW());
    END IF;
END;
//
DELIMITER ;

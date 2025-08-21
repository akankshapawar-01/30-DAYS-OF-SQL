-- Start a transaction to increase salary of employees in dept_id = 2 and commit it.
START TRANSACTION;
UPDATE employees SET salary = salary + 5000 WHERE dept_id = 2;
COMMIT;

-- Start a transaction to decrease salary of emp_id = 5 but rollback the change.
START TRANSACTION;
UPDATE employees SET salary = salary - 2000 WHERE emp_id = 5;
ROLLBACK;


-- Use SAVEPOINT to partially rollback a transaction.
START TRANSACTION;
UPDATE employees SET salary = salary + 1000 WHERE dept_id = 1;
SAVEPOINT step1;

UPDATE employees SET salary = salary + 2000 WHERE dept_id = 2;
SAVEPOINT step2;

ROLLBACK TO step1;
COMMIT;

-- Apply a shared lock while reading employees from dept_id = 3.
START TRANSACTION;
SELECT * FROM employees WHERE dept_id = 3 LOCK IN SHARE MODE;
COMMIT;


-- Apply an exclusive lock on emp_id = 4 and update salary.
START TRANSACTION;
SELECT * FROM employees WHERE emp_id = 4 FOR UPDATE;
UPDATE employees SET salary = salary + 3000 WHERE emp_id = 4;
COMMIT;


-- (Simulating Deadlock - run in two sessions)

-- Session 1
START TRANSACTION;
UPDATE employees SET salary = salary + 1000 WHERE emp_id = 2;

-- Session 2
START TRANSACTION;
UPDATE employees SET salary = salary + 1000 WHERE emp_id = 3;

-- Now if Session 1 runs:
UPDATE employees SET salary = salary + 2000 WHERE emp_id = 3;

-- And Session 2 runs:
UPDATE employees SET salary = salary + 2000 WHERE emp_id = 2;
-- --> Deadlock occurs, DB will auto-cancel one transaction.

-- Check current isolation level.
SELECT @@transaction_isolation;

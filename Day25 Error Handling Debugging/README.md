# Day 25 - Error Handling Debugging
---


## Understanding Errors
- `Syntax Errors` → Mistakes in query writing (e.g., missing comma, wrong keyword).
- `Constraint Errors` → Violating rules like primary key, foreign key, unique, or not null.
- `Runtime Errors` → Errors during query execution (e.g., division by zero, invalid data).
---

## Debugging Techniques
- Use SELECT step by step → Before writing a big query, test parts of it.
- Check schema with DESCRIBE table_name; → Ensures correct column names/data types.
- Use SHOW ERRORS; or error messages → Read MySQL error messages carefully.
- Print intermediate results → Helps identify where the issue is.
---

## Error Handling in MySQL Stored Procedures
- MySQL doesn’t have a very advanced exception system like Java/Python, but you can use handlers.
```sql
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION 
BEGIN
   -- Error handling logic
   INSERT INTO error_log (error_message, error_time) 
   VALUES ('An error occurred', NOW());
END;
```
 Important because it prevents procedure failure.

## Logging Errors
- Create an error_log table to capture errors.
- Useful for debugging triggers, procedures, and events.
- Example:
```sql
CREATE TABLE error_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    error_message VARCHAR(255),
    error_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```
---
## Best Practices for Debugging
- Always test queries on sample dataset first.
- Use transactions (START TRANSACTION, ROLLBACK, COMMIT) to avoid permanent damage when testing.
- Add comments in your queries to remember debugging steps.

# Day 27 - Views and Materialized View 


## What is View ?
- A View is a virtual table based on the result of a SQL query. It does not store data itself but shows data stored in other tables.
- Syntax:
```sql
CREATE VIEW view_name AS
SELECT columns
FROM table
WHERE condition;
```
- Importance:
   - Simplifies complex queries (joins, filters).
   - Provides data security (restrict access to certain columns/rows).
   - Makes queries more readable and reusable.
- Example:
- ```sql
CREATE VIEW employee_department_view AS
SELECT e.emp_id,
       e.emp_name,
       e.job_title,
       d.dept_name
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id;
```

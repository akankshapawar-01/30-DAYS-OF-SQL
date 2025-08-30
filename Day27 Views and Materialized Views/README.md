# Day 27 - Views and Materialized View 
- Today, I learned about Views (virtual tables for simplifying queries) and Materialized Views (physical snapshot of data for faster performance).
---

## 🧐 What is View ?
- A View is a virtual table based on the result of a SQL query. It does not store data itself but shows data stored in other tables.
- **Syntax**:
```sql
CREATE VIEW view_name AS
SELECT columns
FROM table
WHERE condition;
```
- **Importance & When to use**: 
   - Simplifies complex queries (joins, filters).
   - Provides data security (restrict access to certain columns/rows).
   - Makes queries more readable and reusable.
- **Example**:
```sql
CREATE VIEW employee_department_view AS
SELECT e.emp_id,
       e.emp_name,
       e.job_title,
       d.dept_name
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id;
```
- Now you can query:
```sql
SELECT * FROM employee_department_view WHERE dept_name = 'IT';
```
---

## 🧐 What is Materialized View ?
- A Materialized View is a physical copy of data (like a snapshot) based on a query. Unlike a normal View, it stores data and can be refreshed when needed.
- **Syntax**:
```sql
CREATE MATERIALIZED VIEW mv_name AS
SELECT columns
FROM table
WHERE condition;
```
- To refresh:
```sql
REFRESH MATERIALIZED VIEW mv_name;
```
- **Importance & When to use**:
    - Useful when data does not change frequently.
    - Best for reporting, analytics, dashboards.
- **Example**:
```sql
CREATE MATERIALIZED VIEW dept_salary_summary AS
SELECT d.dept_name,
       SUM(s.salary) AS total_salary,
       AVG(s.salary) AS avg_salary,
       COUNT(e.emp_id) AS total_employees
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
JOIN Salaries s ON e.emp_id = s.emp_id
GROUP BY d.dept_name;
```
```sql
SELECT * FROM dept_salary_summary;
```
- If salaries are updated, refresh:
```sql
REFRESH MATERIALIZED VIEW dept_salary_summary;
```
---

## Key Differences :
```sql
--------------------------------------------------------------------------------------
Feature	         |           View	                 |           Materialized View
--------------------------------------------------------------------------------------
Storage      	 |       No (virtual)                |     Yes (physical snapshot)
Performance      |     Slower for big queries        |      Faster for big queries
Data Update	     |      Always shows latest	         |         Needs refresh
Use Case	     |   Simplify queries, security	     |  Reports, dashboards, analytics
```

## Notes:
- Use Views when data changes frequently & you want latest results.
- Use Materialized Views when you want fast performance and don’t need real-time updates.
---

## 🚀 What’s Next?
On Day 28, I will:
- Revise Concepts and Practice queries.

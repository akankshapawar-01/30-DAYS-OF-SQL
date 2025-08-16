# Day 15 - Advanced Aggregate Functions 
- Today, I learned Advanced Aggregate Functions in SQL such as GROUP_CONCAT, STDDEV/VARIANCE, ROLLUP, and also understood which functions are supported in MySQL and which are specific to Oracle/PostgreSQL.
---

### 🧐 What are Advanced Aggregate Functions?
- Advanced Aggregate Functions extend the functionality of basic aggregate functions (SUM, COUNT, AVG, etc.) by providing string aggregation, statistical calculations, hierarchical reporting, and conditional aggregations.
--- 

### Types of Advanced Aggregate Functions (Supported in MySQL)

### GROUP_CONCAT() ⭐
- Combines multiple values from a group into a single string.
- Syntax:
```sql
SELECT dept_id, GROUP_CONCAT(name) AS employee_names
FROM employees
GROUP BY dept_id;
```
- Points to Remember:
  - `GROUP_CONCAT` = MySQL,
  - `STRING_AGG` = PostgreSQL/SQL Server,
  - `LISTAGG` = Oracle.
--- 

### STDDEV() and VARIANCE() ⭐
- `STDDEV()` → Standard Deviation (spread of values).
- `VARIANCE()` → Variance (average squared deviation).
- Syntax:
```sql
SELECT dept_id,
       STDDEV(salary) AS salary_stddev,
       VARIANCE(salary) AS salary_variance
FROM employees
GROUP BY dept_id;
```
- When to Use: To measure how spread out salaries are in a department.

---
### ROLLUP ⭐
- Used for multi-level aggregations.
- Syntax:
  -  `ROLLUP`: Hierarchical totals
     ```sql
     SELECT dept_id, SUM(salary) AS total_salary
     FROM employees
     GROUP BY dept_id WITH ROLLUP;
     ```
- Points to Remember:
  - `ROLLUP` → hierarchical totals.
  - `CUBE` → Supported in Oracle, PostgreSQL, SQL Server.
---

### COUNT(DISTINCT CASE … END) ⭐
- Counts distinct values conditionally.
- Syntax:
  ```sql
  SELECT COUNT(DISTINCT CASE WHEN salary > 60000 THEN dept_id END) AS high_salary_departments
  FROM employees;
  ```
- When to Use: When you want conditional distinct counts (e.g., employees earning >50k vs ≤50k).
- Points to Remember:
  - FILTER is available in PostgreSQL & Oracle.
  - In MySQL/SQL Server → use CASE inside COUNT().
---

### 🚀 What’s Next?
On Day 16, I will:
 - Learn Window Functions

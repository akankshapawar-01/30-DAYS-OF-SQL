# Day 15 - Advanced Aggregate Functions 
- Today, I learned
---

### What are Advanced Aggregate Functions?
- Advanced Aggregate Functions extend the functionality of basic aggregate functions (SUM, COUNT, AVG, etc.) by providing string aggregation, statistical calculations, hierarchical reporting, and conditional aggregations.
--- 

### Types of Advanced Aggregate Functions (Supported in MySQL)
### GROUP_CONCAT() / STRING_AGG()
- Combines multiple values from a group into a single string.
- Syntax:
```sql
SELECT dept_id, GROUP_CONCAT(name ORDER BY name SEPARATOR ', ')
FROM employees
GROUP BY dept_id;
```
- Points to Remember:
  - GROUP_CONCAT = MySQL,
  - STRING_AGG = PostgreSQL/SQL Server,
  - LISTAGG = Oracle.
--- 

### STDDEV() and VARIANCE()
- STDDEV() → Standard Deviation (spread of values).
- VARIANCE() → Variance (average squared deviation).
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
### ROLLUP and CUBE
- Used for multi-level aggregations.
- Syntax:
 -  ROLLUP: Hierarchical totals
     ```sql
     SELECT dept_id, job_title, SUM(salary) AS total_salary
     FROM employees
     GROUP BY ROLLUP(dept_id, job_title);
     ```

- CUBE: All possible combinations
    ```sql
    SELECT dept_id, job_title, SUM(salary) AS total_salary
    FROM employees
    GROUP BY CUBE(dept_id, job_title);
    ```
- When to Use: For reporting dashboards (department totals + grand totals).

- Points to Remember:
  - ROLLUP → hierarchical totals.
  - CUBE → all possible combinations of groups.
  - Supported in MySQL (from 8.0), PostgreSQL, Oracle, SQL Server.
---

### COUNT(DISTINCT CASE … END)
- Counts distinct values conditionally.
- Syntax:
      ```sql
       SELECT dept_id,
            COUNT(DISTINCT CASE WHEN salary > 50000 THEN salary END) AS high_salaries,
            COUNT(DISTINCT CASE WHEN salary <= 50000 THEN salary END) AS low_salaries
       FROM employees
       GROUP BY dept_id;
       ```
- When to Use: When you want conditional distinct counts (e.g., employees earning >50k vs ≤50k).
- Points to Remember:
  - FILTER is available in PostgreSQL & Oracle.
  - In MySQL/SQL Server → use CASE inside COUNT().

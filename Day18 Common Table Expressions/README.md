# Day 18 - Common Table Expressions (CTEs)
- Today, I learned that CTEs (Common Table Expressions) simplify complex queries using the WITH clause and help handle hierarchical data with Recursive CTEs.
---

### 🧐 What is Common Table Expressions ?
- A **Common Table Expression (CTE)** is a temporary, named result set that you can reference within a single `SELECT`, `INSERT`, `UPDATE`, or `DELETE` statement.
- Defined using the `WITH` keyword.
---

### 1) WITH Clause Basics ⭐
- A Common Table Expression (CTE) is defined using the `WITH` clause.
- Acts like a temporary table available only for the duration of the query.
- Makes complex queries easier to read and manage.
- Syntax
```sql
WITH cte_name AS (
    SELECT column1, column2
    FROM table_name
    WHERE condition
)
SELECT *
FROM cte_name;
```

### 2) Recursive CTEs ⭐
- A Recursive CTE calls itself to process hierarchical data.
- Syntax
```sql
WITH RECURSIVE cte_name AS (
    SELECT ...
    FROM table
    WHERE condition

    UNION ALL

    SELECT ...
    FROM table t
    JOIN cte_name c ON t.col = c.col
)
SELECT * FROM cte_name;
```
---

### Points to Remember
### CTE Basics
- Starts with the WITH keyword followed by a temporary result set.
- Exists only during query execution (not stored permanently like a table).

### Recursive CTE
- Useful for working with hierarchical or tree-structured data (e.g., employees, org charts).
- Recursive CTE has two parts:
    - Anchor member → base query
    - Recursive member → repeatedly executes until condition is met
- Must include a termination condition to avoid infinite recursion.
---

### 🚀 What’s Next?
On Day 19, I will:
- Learn about the Indexes and Optimization

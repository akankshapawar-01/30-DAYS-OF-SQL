# Day 9 - Advance Joins
- Today, I learned how to use self joins, cross joins, and joins combined with aggregate functions to analyze relationships within and across tables.
---

### Self Join
- Joining a table to itself to compare rows within the same table.
- Syntax:
```sql
SELECT a.column_name, b.column_name
FROM table_name AS a
JOIN table_name AS b
ON a.common_column = b.common_column;
```
---

### Cross Join
- Produces all possible combinations (Cartesian product) of rows from two tables.
- Syntax:
```sql
SELECT column_list
FROM table1
CROSS JOIN table2;
```
---

### Joins with Aggregates
- Combining `JOIN` with functions like `COUNT()`, `SUM()`, `AVG()` for grouped results.
- When you use an aggregate function (like SUM(), COUNT(), AVG()):
  - If you have only aggregates in your SELECT (no non-aggregated columns), you don’t need GROUP BY.
  - If you also select non-aggregated columns, then you must use GROUP BY for those columns (or aggregate them too).
- Syntax:
```sql
SELECT 
t1.column_name,
AGG_FUNC(t2.column_name) AS alias_name
FROM table1 t1
JOIN table2 t2
ON t1.common_column = t2.common_column
GROUP BY t1.column_name;
```
---

### 💡 Key Points
- `Self Join` uses different aliases for the same table.
- `Cross Join` can generate a large dataset – use carefully.
- `Joins + Aggregates` let you summarize and filter grouped data with HAVING.
- Table aliases (e, d) make queries cleaner.
---

### 🚀 What’s Next?
On Day 10, I will:
- Learn about the Subqueries in SQL

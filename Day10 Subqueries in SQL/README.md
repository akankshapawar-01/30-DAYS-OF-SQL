# Day 10 - Subqueries in SQL
---

## What is a Subquery in SQL ?
- It is a query nested within another SQL query. 
- It allows you to perform complex filtering, aggregation, and data manipulation by using the result of one query inside another. 
---
  
## Subquery in WHERE Clause
- Syntax:
```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name operator (SELECT column_name FROM other_table WHERE condition);
```
---

---
## Types of Subqueries
- **Single-Row Subquery**: Returns a single value (row). Useful with comparison operators like =, >, <.
- **Multi-Row Subquery**: Returns multiple values (rows). Useful with operators like IN, ANY, ALL.
- **Correlated Subquery**: Refers to columns from the outer query in the subquery. Unlike regular subqueries, the subquery depends on the outer query for its values.
- **Non-Correlated Subquery**: Does not refer to the outer query and can be executed independently.
---


---
### 🚀 What’s Next?
On Day 11, I will:
- Learn about the Set Operations

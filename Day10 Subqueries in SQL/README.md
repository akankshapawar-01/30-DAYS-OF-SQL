# Day 10 - Subqueries in SQL
- Today, I learned how to use subqueries in SELECT, FROM, and WHERE clauses to filter, transform, and aggregate data within SQL queries.
---

### 🧐 What is a Subquery ?
- It is a query nested within another SQL query. 
- It allows you to perform complex filtering, aggregation, and data manipulation by using the result of one query inside another. 
---

### Subquery in SELECT Clause ⭐
- A subquery in the SELECT clause is a nested query that returns a single value for each row of the main query.
- Syntax:
```sql
SELECT column1,
(SELECT aggregate_function(column_name)
FROM other_table
WHERE condition) AS alias_name
FROM table_name;
```
---

### Subquery in FROM Clause ⭐
- A subquery in the FROM clause (also called an inline view or derived table) is a nested query that acts like a temporary table for the main query.
- Syntax:
```sql
SELECT columns
FROM (
        SELECT column1, column2, ...
        FROM table_name
        WHERE condition
     ) AS subquery_alias;
```
---

### Subquery in WHERE Clause ⭐
- A subquery in the WHERE clause is a query nested inside the WHERE condition of another SQL query.
- Syntax:
```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name operator (SELECT column_name FROM other_table WHERE condition);
```
---

### Types of Subqueries 
- **Single-Row Subquery**: Returns a single value (row). Useful with comparison operators like =, >, <.
- **Multi-Row Subquery**: Returns multiple values (rows). Useful with operators like IN, ANY, ALL.
- **Correlated Subquery**: Refers to columns from the outer query in the subquery. 
- **Non-Correlated Subquery**: Does not refer to the outer query and can be executed independently.
---

### 💡 When to Use 
## Use Subqueries when:
- You need to filter results using an aggregated value from another query.
- You want to check existence (EXISTS) or membership (IN).
- The logic is easier to read as separate queries.

## Use Joins when:
- You need columns from multiple tables at once.
- You want better performance with large datasets.
---

### 🚀 What’s Next?
On Day 11, I will:
- Learn about the Set Operations

# Day 11 – Set Operations
- Today, I learned how to combine and compare results from multiple queries using SQL set operations like UNION, UNION ALL, INTERSECT and EXCEPT.
---

### 🧐 What are Set Operations?
- Set operations in SQL allow you to combine the results of two or more SELECT queries into a single result set.
- They work similar to mathematical set operations like UNION, INTERSECT, and EXCEPT.
---

## Types of Set Operations
### UNION
- Combines the results of two SELECT statements.
- Removes duplicates by default.
- Syntax:
```sql
SELECT column1, column2 FROM table1
UNION
SELECT column1, column2 FROM table2;
```
- When to use:
   -  When you want to merge results from different queries but don’t want duplicate rows.
---

### UNION ALL
- Combines results and keeps duplicates.
- Syntax:
```sql
SELECT column1, column2 FROM table1
UNION ALL
SELECT column1, column2 FROM table2;
```
- When to use:
   - When you want all rows (including duplicates) for analysis.
---

### INTERSECT
- Returns only rows that exist in both queries.
- Removes duplicates automatically.
- (Not supported in MySQL). You can simulate it using INNER JOIN or IN subqueries.
- Syntax:
```sql
SELECT column1, column2 FROM table1
INTERSECT
SELECT column1, column2 FROM table2;
```
- When to use:
  - When you want the common records between datasets.
---

### EXCEPT 
- Returns rows from the first query that are not in the second query.
- (Not supported in MySQL). You can simulate it using LEFT JOIN + IS NULL or NOT IN subqueries.
- Syntax:
```sql
SELECT column1, column2 FROM table1
EXCEPT
SELECT column1, column2 FROM table2;
```
- When to use:
 - When you want the difference between datasets.
---

### 💡Key Points to Remember
- Number of columns in both queries must match.
- Data types of corresponding columns must be compatible.
- ORDER BY can be applied only at the end of the final combined query.
- Performance can differ:
 - `UNION` → removes duplicates → slower than UNION ALL.
 - `UNION ALL` → keeps duplicates → faster.
---

### 📌 Additional Notes
- Think of UNION like merging two lists without repeating items.
- Think of INTERSECT like finding common friends between two people.
- Think of EXCEPT like “show me what’s in List A but not in List B”.
---

### 🚀 What’s Next? 
On Day 12, I will:
 - Learn about the String Functions

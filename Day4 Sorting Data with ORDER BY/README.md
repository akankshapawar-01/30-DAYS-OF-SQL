# Day 4 – Sorting Data with ORDER BY
- Today, I learned how to **sort query results** using the `ORDER BY` clause in SQL.  
---
### 1️⃣ ORDER BY Clause
- **What it is:** A clause used to sort the result set by one or more columns.  
- **When to use:** When you want to display query results in a particular order (alphabetical, numerical, chronological).  
- **Syntax:**
```sql
SELECT column1, column2 
FROM table_name 
ORDER BY column1 [ASC|DESC], column2 [ASC|DESC];
```
---

### 2️⃣ Sorting in Ascending Order (ASC)
- Default sorting order when ASC or DESC is not specified.
- Example:
```sql
SELECT name, salary FROM employees ORDER BY salary ASC;
```
---

### 3️⃣ Sorting in Descending Order (DESC)
- Used to display the highest values first or reverse alphabetical order.
- Example:
```sql
SELECT name, salary FROM employees ORDER BY salary DESC;
```
---

### 4️⃣ Sorting by Multiple Columns
- What it is: Sorting results first by one column, then by another when the first column has duplicate values.
- Example:
```sql
SELECT name, dept_id, salary 
FROM employees 
ORDER BY dept_id ASC, salary DESC;
```
---

### 5️⃣ Sorting with LIMIT
- What it is: Combining ORDER BY with LIMIT to fetch top N records.
- Example:
```sql
SELECT name, salary FROM employees ORDER BY salary DESC LIMIT 3;
```
---
 ### 🎯 Day 4 Objectives
- Learned to organize query results using ORDER BY.
- Applied sorting on single and multiple columns.
- Combined sorting with LIMIT
---

### 🚀 What’s Next?
On Day 5, I will:
- Learn Aggregate Functions and GROUP BY

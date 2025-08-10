# Day 3 – Filtering Data with WHERE Clause ⭐
- Today, I learned how to **filter data** in SQL using the `WHERE` clause.  
---

### What is WHERE Clause ?
- The `WHERE` clause allows to retrieve only those records that meet specific conditions, making data retrieval more efficient and meaningful.
---

### 1️⃣ WHERE Clause
- **What it is:** Used to filter rows based on conditions.  
- **When to use:** Whenever you need only a subset of data from a table.
- Example:
```sql
SELECT name, age FROM employees WHERE age > 30;
```
---

### 2️⃣ Comparison Operators
- **Purpose**: Compare column values with specific values.
- **Operators Used**:
- `=` → equal to
- `!=` `<>` → not equal to
- `>` `<` → greater than / less than
- `>=` `<=` → greater than or equal / less than or equal
- Example:
```sql
SELECT name, salary FROM employees WHERE salary >= 60000;
```
---

### 3️⃣ Filtering with BETWEEN
**What it is**: Checks whether a value falls within a range.
- Example:
```sql
SELECT name, salary FROM employees WHERE salary BETWEEN 50000 AND 80000;
```
---

### 4️⃣ Filtering with IN / NOT IN
***What it is***: Filters rows where a column matches any value from a list.
- Example:
```sql
SELECT name, dept_id FROM employees WHERE dept_id IN (1001, 1003, 1005);
```
---
### 5️⃣ Pattern Matching with LIKE
**What it is**: Searches for specific patterns in text data.
## Wildcards Used:
- `%` → zero or more characters
- `_` → single character

- Example:
```sql
SELECT name FROM employees WHERE name LIKE 'R%';
```
---

### 6️⃣ Handling NULL Values
**What it is**: Checks whether a column has NULL (missing) values.

- Example:
```sql
SELECT * FROM employees WHERE salary IS NULL;
```
---

### 7️⃣ Using NOT for Negation
**What it is**: Reverses a condition to exclude matching rows.

- Example:
```sql
SELECT name FROM employees WHERE NOT dept_id IN (1001, 1004);
```
---

### 📌 Concepts Learned
- Learned to use the WHERE clause effectively.
- Practiced using operators: BETWEEN, IN, LIKE, and IS NULL.
- Applied negation with NOT for advanced filtering.
---

### 🚀 What’s Next?
On Day 4, I will:
- Learn how to sort data using the ORDER BY clause.

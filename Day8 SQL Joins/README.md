# Day 8 : SQL Joins 
- Today, I Learned how SQL JOINs combine rows from multiple tables based on related columns to retrieve connected data.
---

## INNER JOIN
- Returns rows where there is a match in both tables.
- Syntax:
```sql
SELECT t1.column_name, t2.column_name
FROM table1 t1
INNER JOIN table2 t2
ON t1.column_name = t2.column_name;
```
---

## LEFT JOIN
- Returns all rows from the left table, and matched rows from the right table.
- Unmatched rows from the right table are shown as NULL.
- Syntax:
```sql
SELECT t1.column_name, t2.column_name
FROM table1 t1
LEFT JOIN table2 t2
ON t1.column_name = t2.column_name;
```
---

## RIGHT JOIN
- Returns all rows from the right table, and matched rows from the left table.
- Unmatched rows from the left table are shown as NULL.
- Syntax:
```sql
SELECT t1.column_name, t2.column_name
FROM table1 t1
RIGHT JOIN table2 t2
ON t1.column_name = t2.column_name;
```
---

##  FULL OUTER JOIN
- Returns all rows from both tables, matching where possible.
- MySQL does not support FULL OUTER JOIN directly; we simulate it using UNION.
- Syntax:
```sql
SELECT columns
FROM table1
LEFT JOIN table2
ON table1.common_column = table2.common_column
UNION
SELECT columns
FROM table1
RIGHT JOIN table2
ON table1.common_column = table2.common_column;
```
---

## 📌 Concepts Learned
- Combining data from multiple tables using Joins
- Understanding the difference between INNER, LEFT, RIGHT, and FULL OUTER JOIN
- Applying conditions within joins
- Calculating aggregate values using joins
---

## 💡 Key Points
- `INNER JOIN` → Only matching rows
- `LEFT JOIN` → All left + matching right
- `RIGHT JOIN` → All right + matching left
- `FULL OUTER JOIN` → All rows from both (use UNION in MySQL)
---

## 🚀 What’s Next?
On Day 9, I will:
- Learn about the Advance JOINS (SELF JOIN, CROSS JOIN and Joins with aggregates)

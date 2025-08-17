# Day 16 - Window Functions
- Today, I learned how to use Window Functions in SQL (ROW_NUMBER, RANK, DENSE_RANK, NTILE, LEAD, LAG, FIRST_VALUE, LAST_VALUE) to perform advanced row-level calculations without collapsing rows.
---

### 🧐 What are Window Functions?
- Window Functions perform calculations across a set of rows related to the current row without collapsing the result into a single row (unlike aggregate functions).
- They are often used with the OVER() clause to define partitions and ordering.
---

### Types of Window Functions
### ROW_NUMBER() ⭐
- Assigns a unique sequential number to rows within a partition.
- Syntax:
```sql
ROW_NUMBER() OVER(PARTITION BY column ORDER BY column)
```
- When to Use: To uniquely number rows in each department.

### RANK() ⭐
- Assigns ranks to rows with gaps in case of ties.
- Syntax:
```sql
RANK() OVER(PARTITION BY column ORDER BY column)
```
- When to Use: To find rank of employees within departments (salaries with ties → same rank, but next rank is skipped).

### DENSE_RANK() ⭐
- Similar to RANK but no gaps in ranking.
- Syntax:
```sql
DENSE_RANK() OVER(PARTITION BY column ORDER BY column)
```
- When to Use: When ranking should not skip numbers even if salaries are tied.

### NTILE(n) ⭐
- Divides rows into n equal groups and assigns group numbers.
- Syntax:
```sql
NTILE(n) OVER(ORDER BY column)
```
- When to Use: To split employees into 4 salary quartiles. 

### LEAD() & LAG() ⭐
- LEAD() → get next row’s value
- LAG() → get previous row’s value
- Syntax:
```sql
LAG(column) OVER(ORDER BY column)
LEAD(column) OVER(ORDER BY column)
```
- When to Use: To compare employee salaries with previous and next employees.

### FIRST_VALUE() ⭐
- Gets the first value in the partition.
- Syntax:
```sql
FIRST_VALUE(column) OVER(PARTITION BY column ORDER BY column)
```
- When to Use: To find the highest-paid employee per department. 

### LAST_VALUE() ⭐
- Gets the last value in the partition.
- Note: In MySQL, LAST_VALUE requires correct window framing (ROWS BETWEEN ...).
- Syntax:
```sql
LAST_VALUE(column) OVER(
    PARTITION BY column ORDER BY column
    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
)
```
- When to Use: To find the lowest-paid employee per department.
---

### Points to Remember
- All window functions require the OVER() clause.
- PARTITION BY → groups data (like GROUP BY but without collapsing rows).
- ORDER BY inside OVER() defines ranking order.
- RANK() vs DENSE_RANK() → difference is gaps.
- LAST_VALUE needs a frame (ROWS BETWEEN …) for correct results.
---

### 🚀 What’s Next?
On Day 17, I will:
- Learn about Constraints

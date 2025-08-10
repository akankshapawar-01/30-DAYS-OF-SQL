# Day 5 – Aggregate Functions & GROUP BY Clause ⭐
- Today, I learned how to use **Aggregate Functions** in SQL to perform calculations on data and how to group results using the **GROUP BY** clause.
---

## ⭐ **Aggregate Functions**  
- Functions that perform calculations on a set of values and return a single value.
- **When to use:** When you need summaries like totals, averages, counts, or extremes (min/max) from your dataset.  

### Common Aggregate Functions:
- `COUNT()` → Counts rows  
- `SUM()` → Adds up numeric values  
- `AVG()` → Calculates average values  
- `MAX()` → Finds the highest value  
- `MIN()` → Finds the lowest value  

## Example:
```sql
SELECT COUNT(*) AS total_employees FROM employees;
```
--- 

## ⭐ GROUP BY Clause
- Groups rows that have the same values into summary rows.
- **When to use:** When you want aggregate results per category (e.g., per department).
- Example:
```sql
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id;
```
---
### 📌 Concepts Learned
- Learned how to use aggregate functions (COUNT, SUM, AVG, MAX, and MIN) for summarizing data
- Grouped results using GROUP BY
---

### 🚀 What’s Next?
On Day 6, I will:
- Learn about the HAVING clause to filter aggregated results

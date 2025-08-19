# Day 14 - Intermediate SQL Practice
- Today, I focused on **practicing and revising** all the concepts learned in previous days (Day 1 – Day 13).
- Combined basic queries, aggregate functions, joins, subqueries, string functions, and date/time functions into one practice session.
---

### 📌 Points to Remember
- FULL OUTER JOIN is not supported in MySQL
  - Use LEFT JOIN … UNION … RIGHT JOIN to achieve the same result.
- HAVING is used after GROUP BY
  - It filters aggregated data, unlike WHERE which filters rows before aggregation.
- Subqueries can reference the outer query
  - Example: Comparing an employee’s salary with the average salary of their department.
- String Functions
  - UPPER() → Converts text to uppercase.
  - LENGTH() → Returns number of characters in a string.
- Date Functions
  - YEAR(date_column) → Extracts the year.
  - MONTHNAME(date_column) → Gives the month name.
- JOINs Recap
  - INNER JOIN → Only matching records.
  - LEFT JOIN → All left table records + matching right.
  - RIGHT JOIN → All right table records + matching left.
  - FULL OUTER JOIN → All records from both tables (needs UNION in MySQL).
- Alias improves readability
   - Example: employees e and departments d instead of full table names in queries.
---

### Key Learnings
- Practiced filtering, sorting, and aggregating data.
- Used INNER JOIN, LEFT JOIN, RIGHT JOIN with UNION to simulate FULL OUTER JOIN in MySQL.
- Applied subqueries for comparison with aggregated results.
- Utilized string functions (UPPER, LENGTH) for formatting and analysis.
- Worked with date functions (YEAR, MONTHNAME) to extract and format date values.
---

### 🚀 What’s Next?
On Day 15, I will:
- Learn about the Advanced Aggregate Fumction

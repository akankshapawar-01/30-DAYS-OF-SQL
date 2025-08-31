# Day 30 - Pagination 
- Today, In pagination used LIMIT to control how many rows to show and OFFSET to skip rows.
---

## What is Pagination ?
- Pagination means splitting query results into smaller sets (pages) instead of showing all rows at once.
---

## Syntax:
```sql
SELECT column1, column2
FROM table_name
ORDER BY column1
LIMIT page_size OFFSET (page_number - 1) * page_size;
```
- LIMIT → How many rows per page.
- OFFSET → How many rows to skip.
---

## Points to Remember
- Always use ORDER BY to keep consistent results across pages.
- OFFSET can be costly for very large tables → better use WHERE conditions with indexes for performance.


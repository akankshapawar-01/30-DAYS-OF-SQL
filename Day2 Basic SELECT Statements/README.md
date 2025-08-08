# Day 2 – Basic SELECT Statements ⭐
Today, I explored the **`SELECT` statement** in SQL, which is the foundation of querying relational databases.

---
### 1️⃣SELECT Statement  
- **What it is:** Retrieves data from one or more tables.  
- **When to use:** Whenever you want to view data stored in a database.  
- **Example:**  
```sql
SELECT * FROM employees;
```
---
### 2️⃣ Selecting Specific Columns
- **What it is:** Allows you to fetch only the columns you need instead of all columns.
- **When to use:** When working with large tables or when only specific data is required.
- **Example:**  
```sql
SELECT name, age FROM employees;
```
---
### 3️⃣ Column Aliases (AS)
- **What it is:** Renames a column in the output for better readability.
- **When to use:** When presenting data with meaningful column names.
- **Example:**
```sql
SELECT name AS EmployeeName, hire_date AS JoiningDate FROM employees;
```
---

### 4️⃣ DISTINCT Keyword
- **What it is:** Returns only unique (non-duplicate) values.
- **When to use:** When you need to remove duplicate entries from results.
- **Example:**
```sql
SELECT DISTINCT dept_id FROM employees;
```
---

### 5️⃣ Using Functions (CONCAT)
- **What it is:** Combines values from multiple columns into a single column.
- **When to use:** When creating combined or formatted output.
- **Example:**
```sql
SELECT CONCAT(name, ' works in dept ', dept_id) AS Employee_Department FROM employees;
```
---

### 6️⃣ Basic Calculations in SELECT
- **What it is:** Perform arithmetic operations on numeric columns directly in queries.
- **When to use:** When calculating derived values like annual salary, tax, etc.
- **Example:**
```sql
SELECT name, salary, salary * 12 AS annual_salary FROM employees;
```
---

### 7️⃣ LIMIT Clause
- **What it is:**: Restricts the number of rows returned by a query.
- **When to use:** When testing queries or retrieving only the first few records.
- **Example:**
```sql
SELECT * FROM employees LIMIT 5;
```
---
### 🎯 Day 2 Objectives
- Learned to use SELECT for fetching data.
- Practiced selecting specific columns and applying aliases.
- Explored DISTINCT, CONCAT, and basic calculations in queries.
- Used LIMIT to control output size.
---

### 🚀 What’s Next?
On Day 3, I will:
- Learn how to filter data using the WHERE clause

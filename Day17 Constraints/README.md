# Day 17 - Constraints
- Today, I learned about SQL Constraints that ensure data integrity and set rules like NOT NULL, PRIMARY KEY, FOREIGN KEY, UNIQUE, CHECK, and DEFAULT.
---

### 🧐 What is Constraints ?
- Constraints in SQL are rules applied to table columns to ensure data integrity, accuracy, and consistency in the database.
---

### Types of Constraints
- `NOT NULL` : Ensures a column cannot store NULL values.
- `UNIQUE` : Ensures all values in a column are unique.
- `PRIMARY KEY` : Uniquely identifies each record (combines NOT NULL + UNIQUE).
- `FOREIGN KEY` : Establishes a relationship between two tables.
- `CHECK` : Ensures that values in a column satisfy a specific condition.
- `DEFAULT` : Assigns a default value if no value is provided.
---

### 📌 Points to Remember
- PRIMARY KEY = NOT NULL + UNIQUE.
- A table can have only one PRIMARY KEY, but it can be composite (multiple columns).
- A table can have multiple UNIQUE constraints.
- FOREIGN KEY ensures referential integrity between two tables.
- CHECK is used for validation rules.
- DEFAULT automatically assigns values when no value is given.
---

### When to Use 💡
- Use NOT NULL when a column is mandatory.
- Use UNIQUE for fields like email, phone numbers, etc.
- Use PRIMARY KEY for unique identification of rows.
- Use FOREIGN KEY to connect related tables (employees ↔ departments).
- Use CHECK for rules like salary > 0 or age >= 18.
- Use DEFAULT when a column should auto-fill with a default value.
---

### 🚀 What’s Next?
On Day 18, I will:
- Learn about Common Table Expressions

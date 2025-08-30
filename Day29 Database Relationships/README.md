# Day 29 - Database Relationships
- Today, I learned about database relationships (1:1, 1:N, M:N) using primary key, foreign key.
---

### 🧐 What are Database Relationships?
- Database relationships define how two or more tables are connected through primary keys and foreign keys.
---

## Types Of Relationships 
### 1] One-to-One (1:1)
- One record in Table A relates to only one record in Table B.

### 2] One-to-Many (1:N)
- One record in Table A relates to multiple records in Table B.

### 3] Many-to-Many (M:N)
- Multiple records in Table A relate to multiple records in Table B.
---

## 📌 Key Points to Remember 
- **One-to-Many (1:M)**: Most common relationship.
  - Example:
    - One Department → Many Employees
    - One Employee → Many Salary Records

- **One-to-One (1:1)**: Each row in Table A matches exactly one row in Table B.
  - Example:
     - Employee ↔ Employee_Details (if details table exists).
   
- **Many-to-Many (M:N)**: Needs a junction table.
  - Not present in dataset.

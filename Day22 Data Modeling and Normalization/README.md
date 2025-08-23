# Day 22 Data Modeling and Normalization
- Today, I learned how data modeling designs database structure and how normalization organizes data to reduce redundancy and improve integrity.
---

## 🧐 What is Data Modeling ?
- Data modeling is the process of designing the structure and relationships of a database system.
  
## Basics of Data Modeling
### 1] Conceptual Data Model
- A high-level model that defines what data is important and how entities are related.
- **Entities** :
    - Employee
    - Department
- **Relationships**:
    - An Employee works in a Department.
    - A Department has many Employees.
- **Example**:
```sql
   Employee ─── works in ─── Department
```

### 2] Logical Data Model
- A more detailed model that refines the conceptual model into attributes, keys, and normalization.
- **Entities & Attributes**:
   - Employee (emp_id [PK], name, dept_id [FK])
   - Department (dept_id [PK], dept_name)
- **Relationships**:
   - One Department → Many Employees (1:N)
   - emp_id is Primary Key
   - dept_id in Employee table is a Foreign Key referencing Department
- **Example** (Logical model rules applied):
```sql
Department (dept_id PK, dept_name)
Employee (emp_id PK, name, dept_id FK)
```

### 3] Physical Data Model
- It is the most detailed level of data modeling.
- Describes how the database will actually be implemented in the DBMS (like MySQL, Oracle, PostgreSQL).
- Includes tables, columns, data types, constraints, indexes, relationships, and keys.
- **Entities and Attributes**
     - Employee (emp_id, name, dept_id)
     - Department (dept_id, dept_name)
- **Relationship**
   - An Employee belongs to one Department.
   - A Department can have many Employees.
   - Relationship → One-to-Many
      - dept_id is PK in Department.
      - dept_id is FK in Employee.
- **Example**
   - Department
      - dept_id PK (INT, AUTO_INCREMENT)
      - dept_name (VARCHAR(100), NOT NULL, UNIQUE)
   - Employee
      - emp_id PK (INT, AUTO_INCREMENT)
      - emp_name (VARCHAR(100), NOT NULL)
      - salary (DECIMAL(10,2), CHECK salary > 0)
      - dept_id FK → Department.dept_id
---

### Summary
- **Conceptual** → Only Entities & Relationships (Employee, Department).
- **Logical** → Attributes, Keys, Relationships (emp_id, dept_id, PK, FK).
- **Physical** → tables, columns, data types, SQL constraints.
---

### 🧐 What is Normalization ?
- A systematic process of organizing data in a database to reduce redundancy and improve data integrity.
- Breaks down large tables into smaller related tables.
---

### Principles of Normalization
### 1st Normal Form (1NF)
- Each column should have atomic values (no multiple values in one cell).
- Each row should be unique.
- No repeating groups of columns.

### 2nd Normal Form (2NF)
- Table should be in 1NF.
- No partial dependency (a non-key column should not depend on only part of a composite primary key)

### 3rd Normal Form (3NF)
- Table should be in 2NF.
- No transitive dependency (non-key column depends on another non-key column).

### Boyce-Codd Normal Form (BCNF)
- BCNF is a stricter version of 3NF.
- It removes all anomalies caused by functional dependencies where a non-primary attribute can determine a candidate key.
---

### 📌 Points to Remember
- 1NF → Remove repeating groups & multivalued attributes.
- 2NF → Remove partial dependency (on part of composite key).
- 3NF → Remove transitive dependency (non-key depends on non-key).
- Higher forms exist (BCNF, 4NF, 5NF) but mostly up to 3NF is used in practice.
---

### 🚀 What’s Next?
On Day 23, I will:
- Learn about Stored Procedures and Functions

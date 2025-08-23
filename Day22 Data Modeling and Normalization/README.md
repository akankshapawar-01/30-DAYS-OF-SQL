# Day 22 Data Modeling and Normalization
- Today, I learned
---

### What is Data Modeling ?
- Data modeling is the process of designing the structure and relationships of a database system.

### Basics of Data Modeling 
### 1] Conceptual Data Model
- A high-level model that defines what data is important and how entities are related.
- **Entities** :
    - Employee
    - Department
- **Relationships**:
    - An Employee works in a Department.
    - A Department has many Employees.
- **Example** (Conceptual ERD idea):
```sql
   Employee ─── works in ─── Department
```

### 2] Logical Data Model
- A more detailed model that refines the conceptual model into attributes, keys, and normalization.
- **Entities & Attributes**:
   - Employee (emp_id [PK], name, salary, dept_id [FK])
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
---

### Summary
- **Conceptual** → Only Entities & Relationships (Employee, Department).
- **Logical** → Attributes, Keys, Relationships (emp_id, dept_id, PK, FK).
- **Physical** → tables, columns, data types, SQL constraints.
---

### What is Normalization ?
- A systematic process of organizing data in a database to reduce redundancy and improve data integrity.
- Breaks down large tables into smaller related tables.
---

### Principles of Normalization


---

### 🚀 What’s Next?
On Day 23, I will:
- Learn about Stored Procedures and Functions

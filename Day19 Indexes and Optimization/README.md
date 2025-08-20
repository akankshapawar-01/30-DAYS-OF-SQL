# Day 19 - Indexes and Optimization
- Today, I learned how indexes improve query performance and the different types of indexes (primary, unique, normal, composite, full-text).
---

## What is Index ?
- An Index is a database object that improves the speed of data retrieval operations (SELECT) by providing a faster way to access rows. However, indexes require additional storage and slow down write operations (INSERT, UPDATE, DELETE).
- Syntax:
```sql
CREATE INDEX index
ON TABLE column;
```
---

## Types of Indexes & Syntax
### 1) Primary Index (Clustered)
- Automatically created with PRIMARY KEY.
- Rows are physically stored in sorted order of the index.
- Syntax:
```sql
CREATE TABLE table_name (
    column_name datatype PRIMARY KEY
);
```

### 2) Unique Index
- Ensures all values are unique.
- CREATE UNIQUE INDEX idx_unique_email ON employees(email);
- Syntax:
```sql
CREATE UNIQUE INDEX index_name 
ON table_name(column_name);
```

### 3) Non-Clustered Index
- Creates a separate lookup structure that points to actual data.
- CREATE INDEX idx_emp_name ON employees(name);
- Syntax:
```sql
CREATE INDEX index_name 
ON table_name(column_name);
```

### 4. Composite Index
- Index on multiple columns.
- CREATE INDEX idx_emp_name_dept ON employees(name, dept_id);
- Syntax:
```sql
CREATE INDEX index_name 
ON table_name(column1, column2);
```

###. Full-Text Index (for searching text)
CREATE FULLTEXT INDEX idx_emp_desc ON employees(description);
- Syntax:
```sql
CREATE FULLTEXT INDEX index_name 
ON table_name(column_name);
```
---

## 💡 When to Use Indexes
- Queries frequently use WHERE, JOIN, ORDER BY, GROUP BY.
- Searching large tables on specific columns.
- Columns with high selectivity (many unique values).
---

## 📌 Key Points to Remember
- Indexes speed up reads but slow down writes.
- PRIMARY KEY and UNIQUE constraints automatically create indexes.
- Too many indexes = performance issues.
- Always index columns used in joins and searches.
---

## 🚀 What’s Next?
On Day 20, I will:
- Learn about Transactions and Concurrency Control

# Day 23 - Stored Procedures and Functions
- Today, I learned how to create and use Stored Procedures (for executing multiple SQL statements with parameters) and Functions (for returning a single reusable value in queries).

---

### 🧐 What are Stored Procedure ?
- A stored procedure is a precompiled collection of one or more SQL statements stored in the database. It can take input parameters, perform operations, and return results (via OUT parameters or SELECT).
- **When to Use**:
    - For tasks you need repeatedly (insert, update, delete, calculations).
    - To improve performance (compiled once, executed many times).
    - To enforce business logic in the database.

- **Syntax**:
```sql
  CREATE PROCEDURE procedure_name (
    IN param1 DataType,
    OUT param2 DataType
)
BEGIN
    -- SQL statements
END;
```

- **Call Procedure**
```sql
CALL procedure_name(value, @out_param);
SELECT @out_param;
```
---

### What are Functions ?
- A function is a stored program that accepts parameters, performs a calculation or operation, and returns a single value.
- **When to Use**:
   - When you need a reusable calculation inside queries.
   - To simplify complex SQL expressions.
- **Syntax**:
```sql
  CREATE FUNCTION function_name (
    param1 DataType,
    param2 DataType
) RETURNS ReturnType
BEGIN
    -- SQL statements
    RETURN value;
END;
```

- **Call Function**
```sql
SELECT function_name(value1, value2);
```
---

### 📌 Key Differences
```sql
 Feature	               | Stored Procedure	                           | Function
 ------------------------------------------------------------------------------------------
 Return Value	           | Multiple rows/OUT params	                   | Single value
 Usage                     | CALL keyword	                               | Used inside SELECT
 Purpose	               | Complex tasks, business logic	               | Calculations, reusable expressions
```
---

### 🚀 What’s Next?
On Day 24, I will:
- Learn about Triggers and Events


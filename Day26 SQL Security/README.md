# Day 26 - SQL Security
- Today, I learned about SQL Security basics like user management, permissions, revoking access, least privilege, and SQL injection prevention.
---

## User Management
- In real databases, not everyone should use the root account.
- We create separate users for safety.

- Create a new user
```sql
CREATE USER 'xyz'@'localhost' IDENTIFIED BY 'password123';
```

- Check users
```sql
SELECT user, host FROM mysql.user;
```

## Granting Permissions
- Permissions = what a user is allowed to do.
- Example: only allow a user to read data, not delete it.

- Give only SELECT permission
```sql
GRANT SELECT ON employee_db.* TO 'xyz'@'localhost';
```

- Give all permissions (be careful!)
```sql
GRANT ALL PRIVILEGES ON employee_db.* TO 'xyz'@'localhost';
```

## Revoking Permissions
- If someone should not have access anymore, remove it.

- Remove INSERT permission
```sql
REVOKE INSERT ON employee_db.* FROM 'xyz'@'localhost';
```

## Principle of Least Privilege
- Always give minimum required permissions.
- Example: An HR employee should not be able to delete entire tables.

## SQL Injection Awareness
- A big security risk is SQL Injection (when attackers put malicious SQL in inputs).
- In real projects (Java + SQL), we prevent it by using Prepared Statements instead of directly concatenating queries.
- Example:
```sql
PreparedStatement stmt = conn.prepareStatement("SELECT * FROM employees WHERE emp_id = ?");
stmt.setInt(1, userInput);
```

# Day 20 - Transactions and Concurrency Control
- Today, I Learned how transactions ensure data consistency and concurrency control in SQL using COMMIT, ROLLBACK, SAVEPOINT, locks, and isolation levels.
---

### 🧐 What is a Transaction?
- A transaction is a sequence of one or more SQL operations executed as a single unit of work.

### 1) Properties of Transactions (ACID)
- It must follow ACID properties:
  - `Atomicity` – All or nothing
  - `Consistency` – Database remains valid after transaction
  - `Isolation` – Transactions don’t affect each other
  - `Durability` – Changes persist even after a crash

### 2) Transaction Commands
- **BEGIN**: Starts a transaction.
- **COMMIT**: Saves all changes made in the transaction.
- **ROLLBACK**: Undoes all changes made in the transaction.
- **SAVEPOINT**: Creates a point within a transaction to which you can roll back.
---

### 🧐 What is Concurrency Control ?
- Concurrency control ensures that multiple users/transactions can access the database simultaneously without conflicts.

### 1) Isolation Levels in SQL
- Isolation Level defines how transaction integrity is maintained when multiple transactions occur at the same time.
  - **Read Uncommitted**: Transactions can see uncommitted changes from other transactions.
  - **Read Committed**: Transactions see only committed changes from other transactions.
  - **Repeatable Read**: Ensures consistent reads during a transaction.
  - **Serializable**: Provides the highest level of isolation by fully locking the data.

### 2) Locking Mechanism 
- The locking mechanism in SQL is a way the database ensures that when multiple transactions try to read or write data at the same time, the data stays consistent and correct.
- **Shared Lock (S Lock)**:
   - Multiple transactions can read a resource, but no one can modify it until the lock is released.
- **Exclusive Lock (X Lock)**:
   - Only one transaction can read/write a resource, while others are blocked from accessing it.
- **Deadlock**:
   - Happens when two or more transactions block each other by holding locks on resources and waiting for each other’s release.
 ---

 ### 🚀 What’s Next?
On Day 21, I will:
- Revise and Practice the queries.

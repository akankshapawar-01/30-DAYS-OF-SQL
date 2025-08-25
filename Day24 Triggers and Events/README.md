# Day 24 - Triggers and Events
- Today, I Learned about triggers and events in SQL, which automatically execute actions in response to table changes or scheduled tasks.
---

## 🧐 What is Trigger ?
- A Trigger is a stored program in SQL that automatically executes (fires) in response to specific events (INSERT, UPDATE, DELETE) on a table.
- It is mainly used to automate actions, enforce rules, and maintain logs.

### Types Of Triggers
```sql
Trigger Type      	   |Description
--------------------------------------------------------------
BEFORE Trigger	       |Executes before the triggering SQL operation.
AFTER Trigger	       |Executes after the triggering SQL operation.
INSTEAD OF Trigger	   |Replaces the triggering SQL operation (used in views).
```

### Syntax: 
```sql
CREATE TRIGGER trigger_name
{ BEFORE | AFTER | INSTEAD OF } { INSERT | UPDATE | DELETE }
ON table_name
[FOR EACH ROW]
BEGIN
    -- Trigger logic (SQL statements)
END;
```

### 💡 Components:
- `trigger_name` → Name of the trigger.
- `BEFORE / AFTER / INSTEAD OF`
  - `BEFORE` → Executes before the action.
  - `AFTER` → Executes after the action.
  - `INSTEAD OF` → Replaces the action (only in views, not in MySQL).
  - `INSERT | UPDATE | DELETE` → Event that fires the trigger.
- `table_name` → The table on which the trigger is created.
- `FOR EACH ROW` → Runs once for every row affected.
- `Trigger logic` → SQL code that will run automatically.

### 📌 Note:
- MySQL supports only BEFORE and AFTER triggers.
- SQL Server and Oracle also support INSTEAD OF triggers (mainly for views).
---

## 🧐 What are Events ?
- In SQL, an Event is a scheduled task that runs automatically at a specified time or interval.

### Syntax:
```sql
CREATE EVENT event_name
ON SCHEDULE { AT timestamp | EVERY interval }
DO
BEGIN
    -- Event logic
END;
```

### 💡Components:
- `event_name` → Name of the event.
- `ON SCHEDULE` → When the event will run.
    - Two options:
       1) AT timestamp: Runs the event only once at a specific time.
       2) EVERY interval: Runs the event repeatedly at fixed intervals.
- `DO` → What to execute.
- `BEGIN ... END` → Group of SQL statements that event performs.
---

## 🚀 What’s Next?
On Day 25, I will:
- Learn about Data Import and Export

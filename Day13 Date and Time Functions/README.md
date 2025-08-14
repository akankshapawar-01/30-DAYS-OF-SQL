# Day 13 - Date and Time Functions
- Today, I learned how to use Date and Time functions in SQL to retrieve, extract, manipulate, and format date/time values for queries and calculations.
---

### What are Date and Time Functions ?
- Date and Time functions are predefined functions that allow you to retrieve, manipulate, extract, format, and calculate values from DATE, TIME, DATETIME, or TIMESTAMP data types.
--- 

### Commonly Used Date and Time Functions 🕒
| Function        | Description |
|-----------------|-------------|
| `CURRENT_DATE`  | Returns the current date. |
| `CURRENT_TIME`  | Returns the current time. |
| `NOW()`         | Returns the current date and time. |
| `DATE()`        | Extracts the date part from a `DATETIME` value. |
| `TIME()`        | Extracts the time part from a `DATETIME` value. |
| `YEAR()`        | Extracts the year from a date. |
| `MONTH()`       | Extracts the month from a date. |
| `DAY()`         | Extracts the day of the month from a date. |
| `DATEDIFF()`    | Returns the number of days between two dates. |
| `DATE_ADD()`    | Adds a specified time interval to a date. |
| `DATE_SUB()`    | Subtracts a specified time interval from a date. |
| `DATE_FORMAT()` | Formats a date according to a specified pattern. |
| `TIMESTAMPDIFF()` | Returns the difference between two timestamps in a chosen unit. |
---

### 📌 Key Points
- **CURRENT Functions** – CURRENT_DATE, CURRENT_TIME, and NOW() give the current system date/time.
- **Extraction Functions** – YEAR(), MONTH(), DAY(), DATE(), and TIME() help get specific parts.
- **Calculations** –
  - DATEDIFF(date1, date2) → returns number of days between two dates.
  - TIMESTAMPDIFF(unit, datetime1, datetime2) → difference in years, months, days, etc.
- **Manipulation** –
  - DATE_ADD() and DATE_SUB() allow adding or subtracting intervals (days, months, years).
- **Formatting** –
  - DATE_FORMAT() changes date/time output to a desired pattern.
- **Data Type Compatibility** –
  - Works with DATE, DATETIME, and TIMESTAMP columns.
---
### 🚀 What’s Next?
On Day 13, I will:
  - Practice intermediate SQL queries and revision.

# Day 12 - String Functions
- Today, I learned how Functions are used to manipulate and format text values in SQL queries.
---

### What is String Functions ?
- A string function in SQL is a built-in function used to perform operations on string (text) data, such as manipulating, searching, formatting, or extracting information from it.
---

### Commonly used String Functions:
### 1️⃣ UPPER() / LOWER()
- UPPER() converts all characters in a string to uppercase.
- LOWER() converts all characters in a string to lowercase.
- Syntax:
  -  UPPER(string)
  -  LOWER(string)
- Example:
```sql
SELECT UPPER('hello') AS UpperCase,
       LOWER('WORLD') AS LowerCase;
```
- Output:
```sql
| UpperCase | LowerCase |
|-----------|-----------|
| HELLO     | world     |
```
---

### 2️⃣ LENGTH() / CHAR_LENGTH()
- LENGTH() returns the number of bytes in a string.
- CHAR_LENGTH() returns the number of characters in a string.
- Syntax:
   - LENGTH(string)
   - CHAR_LENGTH(string)
- Example:
```sql
SELECT LENGTH('SQL') AS ByteLength,
       CHAR_LENGTH('SQL') AS CharLength;
```
- Output:
```sql
| ByteLength  | CharLength |
|-------------|------------|
|3            |3           |
```
---

### 3️⃣ TRIM()
- Removes leading or trailing spaces from a string.
- Syntax:
   - TRIM([LEADING | TRAILING | BOTH] remove_char FROM string)
- Example:
```sql
SELECT TRIM('   SQL   ') AS Trimmed;
```

- Output:
```sql
| Trimmed  | 
|----------|
|SQL       |
```
---

### 4️⃣ SUBSTRING() / SUBSTR()
- Extracts a portion of a string starting from a given position, optionally for a specific length.
- Syntax:
  - SUBSTRING(string, start, length)
  - SUBSTR(string, start, length) -- Alias for SUBSTRING
- Example:
```sql
SELECT SUBSTRING('Database', 1, 4) AS Part;
```
- Output:
```sql
| Part  | 
|-------|
|Data   |
```

- start position starts from 1 (not 0) in MySQL.
- Negative start counts from the end of the string.
---

### 5️⃣ CONCAT()
- Joins two or more strings into one.
- Syntax:
  - CONCAT(string1, string2, ...)
- Example:
```sql
SELECT CONCAT('Data', 'Base') AS Combined;
```
- Output:
```sql
| Combined | 
|----------|
|Database  |
```
---

### 6️⃣ REPLACE()
- Replaces all occurrences of a substring with another substring.
- Syntax:
  - REPLACE(original_string, from_substring, to_substring)
- Example:
```sql
SELECT REPLACE('I like SQL', 'like', 'practice') AS NewString;
```
- Output:
```sql
| NewString     | 
|---------------|
|I practice SQL |
```
---

### 7️⃣ INSTR()
- Returns the position of the first occurrence of a substring in a string.
- Syntax:
  - INSTR(string, substring)
- Example:
```sql
SELECT INSTR('Database', 'base') AS Position;
```
- Output:
```sql
| Position | 
|----------|
|5         |
```
- Returns 0 if substring not found.
---

### Advanced String Functions
### 1️⃣ LEFT()
- Returns the leftmost n characters from a string.
- Syntax:
    - LEFT(string, number_of_characters)
- Example:
```sql
SELECT LEFT('HelloWorld', 5) AS Result;
```
- Output:
```sql
| Result   | 
|----------|
|Hello     |
```
--- 

### 2️⃣ RIGHT()
- Returns the rightmost n characters from a string.
- Syntax:
   - RIGHT(string, number_of_characters)
- Example:
```sql
SELECT RIGHT('HelloWorld', 5) AS Result;
```
- Output:
```sql
| Result   | 
|----------|
|World     |
```
---

### 3️⃣ LPAD()
- Pads the left side of a string with another string until it reaches the specified length.
- Syntax:
  - LPAD(string, length, pad_string)
- Example:
```sql
SELECT LPAD('123', 5, '0') AS Result;
```
- Output:
```sql
| Result   | 
|----------|
|00123     |
```
---

### 4️⃣ RPAD()
- Pads the right side of a string with another string until it reaches the specified length.
- Syntax:
   - RPAD(string, length, pad_string)
- Example:
```sql
SELECT RPAD('123', 5, '0') AS Result;
```
Output:
```sql
| Result   | 
|----------|
|12300     |
```
---

### 5️⃣ REVERSE()
- Reverses the characters in a string.
- Syntax:
  - REVERSE(string)
- Example:
```sql
SELECT REVERSE('Hello') AS Result;
```
- Output:
```sql
| Result   | 
|----------|
|olleH     |
```
---

### 🚀 What’s Next?
On Day 13, I will:
- Learn about the Date and Time Functions

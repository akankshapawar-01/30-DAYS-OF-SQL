--UPPER – Convert to Uppercase
SELECT name, UPPER(name) AS upper_name
FROM employees;

-- LOWER – Convert to Lowercase
SELECT name, LOWER(name) AS lower_name
FROM employees;

-- LENGTH – Find String Length
SELECT name, LENGTH(name) AS name_length
FROM employees;

-- TRIM – Remove Extra Spaces
SELECT name, TRIM(name) AS trimmed_name
FROM employees;

-- SUBSTRING – Extract Part of String
SELECT name, SUBSTRING(name, 1, 5) AS first_five_chars
FROM employees;

-- LEFT – Get Left Side Characters
SELECT name, LEFT(name, 4) AS first_4_chars
FROM employees;

-- RIGHT – Get Right Side Characters
SELECT name, RIGHT(name, 5) AS last_5_chars
FROM employees;

-- LPAD – Pad String on Left
SELECT name, LPAD(name, 15, '*') AS padded_name
FROM employees;

-- RPAD – Pad String on Right
SELECT name, RPAD(name, 15, '.') AS padded_name
FROM employees;

-- REVERSE – Reverse the String
SELECT name, REVERSE(name) AS reversed_name
FROM employees;

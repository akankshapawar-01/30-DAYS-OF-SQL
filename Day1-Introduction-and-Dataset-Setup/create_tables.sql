CREATE DATABASE IF NOT EXISTS employee_db;
USE employee_db;

CREATE TABLE departments (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50) UNIQUE
);

CREATE TABLE employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
dept_id INT,
salary DECIMAL(10,2),
hire_date DATE,
FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

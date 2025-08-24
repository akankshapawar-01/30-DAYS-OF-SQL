-- 1) Normalization Example with Dataset
-- Unnormalized Employee Table 

Employee
---------------------------------------------------
emp_id | emp_name | dept_name | skills
1      | Akanksha | HR        | Java, SQL
2      | Rohit    | Finance   | Excel, Tally
3      | Sneha    | HR        | HRMS, Payroll


Problems:
- Repeating values in skills column (Java, SQL) → violates 1NF
- dept_name repeated → violates 2NF/3NF

Solution: 
- Step 1: 1NF (Remove Repeating Groups)
- Split skills into another table:

Employee
----------------------------------
emp_id | emp_name | dept_id
1      | Akanksha | 1
2      | Rohit    | 2
3      | Sneha    | 1

Department
--------------------
dept_id | dept_name
1       | HR
2       | Finance

EmpSkills
------------------
emp_id | skill
1      | Java
1      | SQL
2      | Excel
2      | Tally
3      | HRMS
3      | Payroll

- Step 2: 2NF (Remove Partial Dependency)
- Suppose Employee table had (emp_id, dept_id) as composite key and also stored dept_name. Then dept_name depends only on dept_id, not the full key → violation.
- Fix: keep dept_name only in Department.

- Step 3: 3NF (Remove Transitive Dependency)
- If Employee table also had dept_location (depends on department, not directly on employee), move it into Department.
- Dataset is already 3NF normalized if you keep Employee, Department, EmpSkills separate.

--General Example (Easy to Understand)
-- Unnormalized Student Table

  Student
------------------------------------------------
student_id | name     | course       | teacher
1          | Aditi    | Math, Physics| Mr. Sharma
2          | Rohit    | Chemistry    | Mrs. Patel


- Problems:
- Multiple courses in one column → violates 1NF
- Teacher depends on course, not student → violates 3NF
- Normalized (Up to 3NF)

Student
---------------------
student_id | name
1          | Aditi
2          | Rohit

Course
---------------------
course_id | course_name | teacher
1         | Math        | Mr. Sharma
2         | Physics     | Mr. Sharma
3         | Chemistry   | Mrs. Patel

StudentCourse
---------------------
student_id | course_id
1          | 1
1          | 2
2          | 3



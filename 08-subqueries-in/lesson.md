# Lesson 09 — Window Functions: OVER()

## 🎯 Goal

Understand how window functions work and how they differ from GROUP BY.

---

## 🧠 Key Idea

GROUP BY combines multiple rows into one.

Window functions calculate values for each row while preserving all rows.

Example:

```sql
SELECT
    first_name,
    salary,
    AVG(salary) OVER() AS company_average_salary
FROM employees;
```

Every employee remains in the result, but each row also contains the company average salary.

---

## 📌 Syntax

```sql
FUNCTION(column) OVER()
```

Examples:

```sql
AVG(salary) OVER()
SUM(salary) OVER()
MIN(salary) OVER()
MAX(salary) OVER()
COUNT(*) OVER()
```

---

## ✅ When to use

Use window functions when you need:

- company average next to each employee
- company total next to each employee
- company maximum or minimum on every row

without losing individual records.
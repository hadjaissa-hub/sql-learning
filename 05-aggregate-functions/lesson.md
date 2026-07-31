# Module 5 — Aggregate Functions

## Goal

Learn how to summarize data using aggregate functions.

---

# COUNT()

`COUNT()` returns the number of rows.

## Syntax

```sql
SELECT COUNT(*)
FROM employees;
```

# SUM()

`SUM()` calculates the total of numeric values.

## Syntax

```sql
SELECT SUM(salary)
FROM employees;
```

Calculate the total salary of IT employees:

```sql
SELECT SUM(salary)
FROM employees
WHERE department = 'IT';
```

Using an alias:

```sql
SELECT SUM(salary) AS total_salary
FROM employees;
```

# AVG()

`AVG()` returns the average value of a numeric column.

## Syntax

```sql
SELECT AVG(salary)
FROM employees;
```

Average salary in IT:

```sql
SELECT AVG(salary)
FROM employees
WHERE department = 'IT';
```

Average age:

```sql
SELECT AVG(age)
FROM employees;
```

Using an alias:

```sql
SELECT AVG(salary) AS average_salary
FROM employees;
```


